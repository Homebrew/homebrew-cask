cask "the-unofficial-homestuck-collection" do
  version "2.7.2"
  sha256 "a71d5a14e631c3721a96302679e0531fbc367b7712886e28fc2547fa988f44c2"

  url "https://github.com/Bambosh/unofficial-homestuck-collection/releases/download/v#{version}/The-Unofficial-Homestuck-Collection-#{version}.dmg",
      verified: "github.com/Bambosh/unofficial-homestuck-collection/"
  name "The Unofficial Homestuck Collection"
  desc "Offline viewer for the webcomic Homestuck"
  homepage "https://bambosh.github.io/unofficial-homestuck-collection/"

  # Upstream has stopped publishing macOS versions due to GitHub dropping
  # support for macOS 13 and it's unclear whether this will be addressed going
  # forward due to the project maintenance status. For the time being, we check
  # multiple GitHub releases to identify the newest version with a dmg file.
  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+).*?\.dmg/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "The Unofficial Homestuck Collection.app"

  zap trash: [
    "~/Library/Application Support/unofficial-homestuck-collection",
    "~/Library/Preferences/com.bambosh.unofficialhomestuckcollection.plist",
    "~/Library/Saved Application State/com.bambosh.unofficialhomestuckcollection.savedState",
  ]

  caveats do
    requires_rosetta
    <<~EOS
      You will need to download the corresponding Asset Pack by visiting:
        https://bambosh.github.io/unofficial-homestuck-collection/
    EOS
  end
end

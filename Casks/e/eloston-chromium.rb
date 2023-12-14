cask "eloston-chromium" do
  arch arm: "arm64", intel: "x86-64"

  on_arm do
    version "119.0.6045.199-1.1,1701702395"
    sha256 "6d8bb8a85472fdf385ad4cb4bc277c8ff9ef3b646a0aa66ab31554889a3da235"
  end
  on_intel do
    version "120.0.6099.71-1.1,1702569961"
    sha256 "424cafdaa96bb08ce7e007d048d35043cd0d364373bbad3e0521c218e7175cfc"
  end

  url "https://github.com/ungoogled-software/ungoogled-chromium-macos/releases/download/#{version.csv.first}_#{arch}__#{version.csv.second}/ungoogled-chromium_#{version.csv.first}_#{arch}-macos.dmg",
      verified: "github.com/ungoogled-software/ungoogled-chromium-macos/"
  name "Ungoogled Chromium"
  desc "Google Chromium, sans integration with Google"
  homepage "https://ungoogled-software.github.io/ungoogled-chromium-binaries/"

  # Releases are separated by architecture, so we have to check multiple recent
  # releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^v?(\d+(?:[.-]\d+)+)(?:[._-]#{arch})?(?:[._-]+?(\d+(?:\.\d+)*))?$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        (match.length >= 2) ? "#{match[1]},#{match[2]}" : match[1]
      end
    end
  end

  conflicts_with cask: [
    "chromium",
    "freesmug-chromium",
  ]

  app "Chromium.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
    "~/Library/Preferences/org.chromium.Chromium.plist",
    "~/Library/Saved Application State/org.chromium.Chromium.savedState",
  ]
end

cask "mos@beta" do
  version "4.3.0-beta-20260820.1"
  sha256 "48a621cf66fec3bf68e3792829f2ae0f412a2d9bc41f491789ea7bdeac39d880"

  url "https://github.com/Caldis/Mos/releases/download/#{version}/Mos.Versions.#{version}.zip",
      verified: "github.com/Caldis/Mos/"
  name "Mos"
  desc "Smooths scrolling and set mouse scroll directions independently"
  homepage "https://mos.caldis.me/"

  livecheck do
    url :url
    regex(/Mos\.Versions\.v?(\d+(?:\.\d+)+-beta(?:[.-]\d+)+)\.zip/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next unless release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten.compact
    end
  end

  conflicts_with cask: "mos"
  depends_on :macos

  app "Mos.app"

  zap trash: "~/Library/Preferences/com.caldis.Mos.plist"
end

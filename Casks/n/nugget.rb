cask "nugget" do
  arch arm: "arm", intel: "intel"

  version "7.4"
  sha256 arm:   "f48118b2e3bf4236560e769746f11e851ad124e9be7007c898eba7119c0630d8",
         intel: "e4f212e9c886e1a6083947260ceb898a10acbe9f742f1cafc7dabe8939aa9364"

  url "https://github.com/leminlimez/Nugget/releases/download/v#{version}/Nugget_macOS_#{arch}.dmg"
  name "Nugget"
  desc "Customise your iOS device with animated wallpapers, disable daemons and more"
  homepage "https://github.com/leminlimez/Nugget"

  # Not every GitHub release provides a file for each architecture, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases do |json, regex|
      file_regex = /^Nugget[._-]macOS[._-]#{arch}\.dmg$/i

      json.map do |release|
        next if release["draft"] || release["prerelease"]
        next unless release["assets"]&.any? { |asset| asset["name"]&.match?(file_regex) }

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on :macos

  app "Nugget.app"

  uninstall quit: "com.leemin.Nugget"

  zap trash: [
    "~/Library/Preferences/com.nugget.MGA Data.plist",
    "~/Library/Preferences/com.nugget.Nugget.plist",
    "~/Library/Preferences/com.nugget.settings.plist",
  ]
end

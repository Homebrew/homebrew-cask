cask "nugget" do
  arch arm: "arm", intel: "intel"

  version "7.4.1"
  sha256 arm:   "24d86baa6d48fc1edb612515a65c5687d1063b329ae0dac3d593890e67178b48",
         intel: "c5cb31316c30d7d33694a3dfbf4f71fb31f827be34b9717716ebe03c485d6f7d"

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

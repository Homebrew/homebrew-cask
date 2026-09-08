cask "nugget" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "7.3.2"
    sha256 "4b5703c016c0952e9ce4e3a620f19c634ec95deee919a0f3205b645be839d423"
  end
  on_intel do
    version "7.3.1"
    sha256 "aaecaec949f9fd28e31c286c21130a36d0f73657ef62e229f7b092118fefce0c"
  end

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

  depends_on macos: :big_sur

  app "Nugget.app"

  uninstall quit: "com.leemin.Nugget"

  zap trash: [
    "~/Library/Preferences/com.nugget.MGA Data.plist",
    "~/Library/Preferences/com.nugget.Nugget.plist",
    "~/Library/Preferences/com.nugget.settings.plist",
  ]
end

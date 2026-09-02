cask "pia" do
  version "4.1.0"
  sha256 "eb8a25db8c2ad67fbaad39100e48102f18a436cb6a99bc0db9829a95e8e6e283"

  url "https://github.com/LINCnil/pia/releases/download/v#{version}/pia-#{version}-universal.dmg"
  name "Pia"
  desc "Privacy Impact Assessment Tool"
  homepage "https://github.com/LINCnil/pia"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^pia[._-]v?(\d+(?:\.\d+)+)[._-]universal\.dmg$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  depends_on macos: :big_sur

  app "pia.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.atnos.pia.sfl*",
    "~/Library/Application Support/CrashReporter/pia_*.plist",
    "~/Library/Application Support/pia",
    "~/Library/Logs/pia",
    "~/Library/Preferences/com.atnos.pia.plist",
    "~/Library/Saved Application State/com.atnos.pia.savedState",
  ]
end

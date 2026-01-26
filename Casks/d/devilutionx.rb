cask "devilutionx" do
  version "1.5.5"
  sha256 "10ecd55caf4239d087bc91bce7538943705399b0b2abcff71c347ddbf01d30c6"

  url "https://github.com/diasurgical/devilutionX/releases/download/#{version}/devilutionx-macos-universal.dmg"
  name "DevilutionX"
  desc "Diablo build for modern operating systems"
  homepage "https://github.com/diasurgical/devilutionX/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/devilutionx[._-]macos[._-]universal\.dmg$}i)
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

  app "devilutionX.app"

  zap trash: [
        "~/Library/Application Support/CrashReporter/devilutionX_*.plist",
        "~/Library/Application Support/diasurgical/devilution",
        "~/Library/Saved Application State/com.diasurgical.devilutionx.savedState",
      ],
      rmdir: "~/Library/Application Support/diasurgical"
end

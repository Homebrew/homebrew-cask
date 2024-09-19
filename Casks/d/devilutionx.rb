cask "devilutionx" do
  version "1.5.3"
  sha256 "311f86355af67162651deabe1b55e0df6cc58fad911dc1e730658ded7255190c"

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

  depends_on macos: ">= :high_sierra"

  app "devilutionX.app"

  zap trash: [
        "~/Library/Application Support/CrashReporter/devilutionX_*.plist",
        "~/Library/Application Support/diasurgical/devilution",
        "~/Library/Saved Application State/com.diasurgical.devilutionx.savedState",
      ],
      rmdir: "~/Library/Application Support/diasurgical"
end

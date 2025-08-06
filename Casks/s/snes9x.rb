cask "snes9x" do
  version "1.63"
  sha256 "dce88223b0b373357249bfb604415a379dcba6a996ca254bdeca5b16a8564c69"

  url "https://github.com/snes9xgit/snes9x/releases/download/#{version}/snes9x-#{version}-Mac.zip",
      verified: "github.com/snes9xgit/snes9x/"
  name "Snes9x"
  desc "Video game console emulator"
  homepage "https://www.snes9x.com/"

  # Releases sometimes don't have a macOS build, so we check multiple
  # recent releases instead of only the "latest" release. NOTE: We should be
  # able to use `strategy :github_latest` or drop livecheck altogether
  # when subsequent releases provide files for macOS again.
  livecheck do
    url :url
    regex(/^snes9x[._-]v?(\d+(?:\.\d+)+)[._-]Mac\.zip$/i)
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

  depends_on macos: ">= :sierra"

  app "Snes9x.app"

  zap trash: [
    "~/Library/Application Support/Snes9x",
    "~/Library/Preferences/com.snes9x.macos.snes9x.plist",
    "~/Library/Saved Application State/com.snes9x.macos.snes9x.savedState",
  ]
end

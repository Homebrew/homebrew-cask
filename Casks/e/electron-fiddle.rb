cask "electron-fiddle" do
  arch arm: "arm64", intel: "x64"

  version "0.36.5"
  sha256 arm:   "55286767880472dcc3c64cad099104bcd209e07654988990835f22f8d8397dea",
         intel: "c9de36fbb50aec75fabf4958bfbe6c2c09d3a9f52587058a45324d8117c32f09"

  url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron.Fiddle-darwin-#{arch}-#{version}.zip",
      verified: "github.com/electron/fiddle/"
  name "Electron Fiddle"
  desc "Create and play with small Electron experiments"
  homepage "https://www.electronjs.org/fiddle"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^Electron[._-]Fiddle[._-]darwin[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.(?:dmg|pkg|zip)$/i)
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

  depends_on macos: ">= :big_sur"

  app "Electron Fiddle.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.fiddle.sfl*",
    "~/Library/Application Support/Electron Fiddle",
    "~/Library/Caches/com.electron.fiddle*",
    "~/Library/Caches/fiddle-core",
    "~/Library/HTTPStorages/com.electron.fiddle",
    "~/Library/Preferences/com.electron.fiddle*.plist",
    "~/Library/Saved Application State/com.electron.fiddle.savedState",
  ]
end

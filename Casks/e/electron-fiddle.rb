cask "electron-fiddle" do
  arch arm: "arm64", intel: "x64"

  version "0.36.0"
  sha256 arm:   "a935a765eea0b8cca2b78a295c7a6faa796435ea30958f708f2cac5608654f43",
         intel: "a68f0f3181a5bb7af9ca4891d3a186330b8a6754d498e6971c9da6b7d645f497"

  url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron-Fiddle-darwin-#{arch}-#{version}.zip",
      verified: "github.com/electron/fiddle/"
  name "Electron Fiddle"
  desc "Create and play with small Electron experiments"
  homepage "https://www.electronjs.org/fiddle"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^Electron[._-]Fiddle[._-]darwin[._-](?:x64|arm64)[._-]v?(\d+(?:\.\d+)+)\.(?:dmg|pkg|zip)$/i)
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

  app "Electron Fiddle.app"

  zap trash: [
    "~/Library/Application Support/Electron Fiddle",
    "~/Library/Caches/com.electron.fiddle*",
    "~/Library/Preferences/com.electron.fiddle*.plist",
  ]
end

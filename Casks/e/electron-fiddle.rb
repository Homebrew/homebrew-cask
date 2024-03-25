cask "electron-fiddle" do
  arch arm: "arm64", intel: "x64"

  version "0.36.2"
  sha256 arm:   "e58fd3c483234342fd0b82e72c0bc81276f4e7328e3007e25825d95a83387e32",
         intel: "4ae560f05215c5eb9eab563e7ff5de117bd1f34508194dc34fbe265f84ea2cef"

  url "https://github.com/electron/fiddle/releases/download/v#{version}/Electron.Fiddle-darwin-#{arch}-#{version}.zip",
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

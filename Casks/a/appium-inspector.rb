cask "appium-inspector" do
  arch arm: "arm64", intel: "x64"

  version "2025.7.3"
  sha256 arm:   "9d3dec6c7fb64e7ef5f9a15754351f3d72398ff5163b0290cf3016573fc59fd5",
         intel: "427f01463eec91d882e45d7223d2433a232e2e8d99642a1f63901ef1a7ad67c4"

  url "https://github.com/appium/appium-inspector/releases/download/v#{version}/Appium-Inspector-#{version}-mac-#{arch}.zip"
  name "Appium Inspector GUI"
  desc "GUI inspector for mobile apps"
  homepage "https://github.com/appium/appium-inspector/"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^Appium.*?v?(\d+(?:\.\d+)+)[._-]mac[._-]#{arch}\.(?:dmg|pkg|zip)$/i)
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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "Appium Inspector.app"

  zap trash: [
    "~/Library/Application Support/appium-inspector",
    "~/Library/Logs/Appium Inspector",
    "~/Library/Preferences/io.appium.inspector.plist",
    "~/Library/Saved Application State/io.appium.inspector.savedState",
  ]
end

cask "tauritavern" do
  arch arm: "arm64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "913756a0de19bb315d85204e026697aaff078d06d6f82d7ca5cff7bd70d0c6d2",
         intel: "fbf3d80e4921f7abfbb3d56797db8645c14236e8338c96cec66997e5c1d81811"

  url "https://github.com/Darkatse/TauriTavern/releases/download/v#{version}/TauriTavern-#{version}-macos-#{arch}.dmg"
  name "TauriTavern"
  desc "SillyTavern-compatible native client"
  homepage "https://tauritavern.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "TauriTavern.app"

  zap trash: [
    "~/Library/Application Support/com.tauritavern.client",
    "~/Library/Application Support/CrashReporter/tauritavern_*.plist",
    "~/Library/Caches/com.tauritavern.client",
    "~/Library/Caches/tauritavern",
    "~/Library/HTTPStorages/tauritavern.binarycookies",
    "~/Library/Preferences/com.tauritavern.client.plist",
    "~/Library/Preferences/tauritavern.plist",
    "~/Library/WebKit/com.tauritavern.client",
    "~/Library/WebKit/tauritavern",
  ]
end

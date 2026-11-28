cask "tauritavern" do
  arch arm: "arm64", intel: "x64"

  version "2.5.0"
  sha256 arm:   "727b91c7a5921777511c87d1af3df97d20eb84e633ebd026c02156bdb046411d",
         intel: "877d1f6785208ad6ddbfbc55f7ec7ffcb6032033cbb40279ae58493f6a8e06f2"

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

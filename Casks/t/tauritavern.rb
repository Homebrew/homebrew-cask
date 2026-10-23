cask "tauritavern" do
  arch arm: "arm64", intel: "x64"

  version "2.4.0"
  sha256 arm:   "5fb376a6f47415e96216e898c750be631542c3db799e374e75aa1109428edcd1",
         intel: "ac6d590d24527e9a6e6ca49c8b9cbf4ff01297cad1da14aad05abf535cf633d9"

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

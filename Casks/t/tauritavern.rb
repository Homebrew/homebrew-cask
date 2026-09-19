cask "tauritavern" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "1d843252a49ba0093fe2bd7a24042a4f9a290097006c7ce8ae76707a59ed4ad7",
         intel: "33ea0bea5ce2461eb69369397bfd339d3fe8c4c527511bcd88c822b5ce919a9a"

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

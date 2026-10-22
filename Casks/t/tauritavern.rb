cask "tauritavern" do
  arch arm: "arm64", intel: "x64"

  version "2.4.0"
  sha256 arm:   "ff79f5ea6555cc6fd693ec8536ce89dcd172f9785fa84d10405aa76ea85e0dbb",
         intel: "30cf873a56a50d291c7870e36ad9efc5778fa1874edb46837b8305f5bd132391"

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

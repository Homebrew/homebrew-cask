cask "tauritavern" do
  arch arm: "arm64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "f9616a391af266edd46576f81e0419c609c41d42e1e55d4980445a67b56c03b0",
         intel: "e9397e4b2424ed4f14915303286e53e66a5576ab963d208a75a50891af0ccb7e"

  url "https://github.com/Darkatse/TauriTavern/releases/download/v#{version}/TauriTavern-#{version}-macos-#{arch}.dmg",
      verified: "github.com/Darkatse/TauriTavern/"
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
    "~/Library/Caches/com.tauritavern.client",
    "~/Library/Preferences/com.tauritavern.client.plist",
    "~/Library/WebKit/com.tauritavern.client",
  ]
end

cask "touchosc" do
  version "1.5.1,255"
  sha256 "0d95493ce423c43699906e6da4af02e99cce4a8c5eb08d050f2fab704a3cda87"

  url "https://hexler.net/pub/touchosc/touchosc-#{version.csv.first}.#{version.csv.second}-macos.dmg"
  name "touchosc"
  desc "MIDI and OSC Controller Software"
  homepage "https://hexler.net/touchosc"

  livecheck do
    url "https://hexler.net/touchosc/appcast/macos/"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "TouchOSC.app"

  zap trash: [
    "~/Documents/TouchOSC",
    "~/Library/Application Support/net.hexler.lex",
    "~/Library/Caches/net.hexler.lex",
    "~/Library/Logs/net.hexler.lex",
    "~/Library/Preferences/net.hexler.lex.plist",
    "~/Library/Saved Application State/net.hexler.lex.savedState",
  ]
end

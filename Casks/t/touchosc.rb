cask "touchosc" do
  version "1.3.1,204"
  sha256 "d2d48044e2435896d5cba1e115cb446c8fc65db8dfc3da1977f8ba45233d6f5b"

  url "https://hexler.net/pub/touchosc/touchosc-#{version.csv.first}.#{version.csv.second}-macos.dmg"
  name "touchosc"
  desc "MIDI and OSC Controller Software"
  homepage "https://hexler.net/touchosc"

  livecheck do
    url "https://hexler.net/touchosc/appcast/macos/"
    strategy :sparkle
  end

  auto_updates true

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

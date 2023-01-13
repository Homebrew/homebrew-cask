cask "protokol" do
  version "0.4.10,97"
  sha256 "db429beb276f36f457b423379aff028befbe0ab1720f9e3894aedddf628d73ab"

  url "https://hexler.net/pub/protokol/protokol-#{version.csv.first}.#{version.csv.second}-macos.dmg"
  name "protokol"
  desc "MIDI and OSC Monitor"
  homepage "https://hexler.net/protokol"

  livecheck do
    url "https://hexler.net/protokol/appcast/macos/"
    strategy :sparkle
  end

  auto_updates true

  app "Protokol.app"

  zap rmdir: "~/Documents/Protokol",
      trash: [
        "~/Library/Application Support/net.hexler.Protokol",
        "~/Library/Caches/net.hexler.Protokol",
        "~/Library/HTTPStorages/net.hexler.Protokol",
        "~/Library/HTTPStorages/net.hexler.Protokol.binarycookies",
        "~/Library/Logs/net.hexler.Protokol",
        "~/Library/Preferences/net.hexler.Protokol.plist",
      ]
end

cask "protokol" do
  version "0.5.3,103"
  sha256 "1fd07c880e9fa09e5e58b1f9ef357c03f93c7997635710860f90a65370306a76"

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

  zap trash: [
        "~/Library/Application Support/net.hexler.Protokol",
        "~/Library/Caches/net.hexler.Protokol",
        "~/Library/HTTPStorages/net.hexler.Protokol",
        "~/Library/HTTPStorages/net.hexler.Protokol.binarycookies",
        "~/Library/Logs/net.hexler.Protokol",
        "~/Library/Preferences/net.hexler.Protokol.plist",
      ],
      rmdir: "~/Documents/Protokol"
end

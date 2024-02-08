cask "protokol" do
  version "0.5.4,105"
  sha256 "d717c96a8276b94408bd5bb595079871a0cacb3404c7adb9ef39cc2028cbe536"

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

cask "protokol" do
  version "0.5.1,101"
  sha256 "897b92a8187d7300dfb7071632957c541ec53bd2651146ecd4c73b737f28095c"

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

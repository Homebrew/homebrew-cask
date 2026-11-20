cask "protokol" do
  version "0.6.9,142"
  sha256 "864569f8a811e026b2798e10bf8bbea5731977f92fb1f800ebb16f8ec26e8b26"

  url "https://hexler.net/pub/protokol/protokol-#{version.csv.first}.#{version.csv.second}-macos.dmg"
  name "protokol"
  desc "MIDI and OSC Monitor"
  homepage "https://hexler.net/protokol"

  livecheck do
    url "https://hexler.net/protokol/appcast/macos/"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

  app "Protokol.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.hexler.protokol.sfl*",
        "~/Library/Application Support/net.hexler.Protokol",
        "~/Library/Caches/net.hexler.Protokol",
        "~/Library/HTTPStorages/net.hexler.Protokol",
        "~/Library/HTTPStorages/net.hexler.Protokol.binarycookies",
        "~/Library/Logs/net.hexler.Protokol",
        "~/Library/Preferences/net.hexler.Protokol.plist",
      ],
      rmdir: "~/Documents/Protokol"
end

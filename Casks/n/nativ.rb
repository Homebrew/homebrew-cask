cask "nativ" do
  version "0.4.7"
  sha256 "616bbe25702a951be47aa21436bf54a9ee0335c0eed93f120430190b05da0602"

  url "https://github.com/Neywa-Labs/nativ/releases/download/v#{version}/Nativ-#{version}.dmg"
  name "Nativ"
  desc "Run AI models locally"
  homepage "https://blaizzy.github.io/nativ/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Nativ.app"

  zap trash: [
    "~/Library/Application Support/Nativ",
    "~/Library/Caches/io.github.blaizzy.nativ",
    "~/Library/Caches/Nativ",
    "~/Library/HTTPStorages/io.github.blaizzy.nativ*",
    "~/Library/Preferences/io.github.blaizzy.nativ.plist",
  ]
end

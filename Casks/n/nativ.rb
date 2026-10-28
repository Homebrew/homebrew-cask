cask "nativ" do
  version "0.4.4"
  sha256 "b4a598eb687668ef7d3bb555f070b0104012079b206828241811d822f9127ccb"

  url "https://github.com/Blaizzy/nativ/releases/download/v#{version}/Nativ-#{version}.dmg"
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

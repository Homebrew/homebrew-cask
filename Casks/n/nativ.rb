cask "nativ" do
  version "0.3.6"
  sha256 "ed188b69443466b815fc3d9960c4fa3a4ae8ff85395c86c325ac31fa016a2c6a"

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

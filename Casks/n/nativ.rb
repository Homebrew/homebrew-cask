cask "nativ" do
  version "0.3.7"
  sha256 "1e980559df3f2f4c765d4d8a156dd867d1eb1e41d258e3334e261bb6b7886050"

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

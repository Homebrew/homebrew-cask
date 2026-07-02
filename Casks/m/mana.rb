cask "mana" do
  version "0.2.9"
  sha256 "b07fea60573043df7f5d51f7adbc786a93ad13897c2ec930e7971298149b6ed5"

  url "https://downloads.silent-spell.com/Mana-#{version}.dmg"
  name "Mana"
  desc "Menu bar tracker for AI coding assistant quotas"
  homepage "https://silent-spell.com/"

  livecheck do
    url "https://downloads.silent-spell.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Mana.app"

  uninstall quit: "com.silent-spell.mana"

  zap trash: [
    "~/Library/Application Support/Mana",
    "~/Library/Caches/com.silent-spell.mana",
    "~/Library/HTTPStorages/com.silent-spell.mana",
    "~/Library/Logs/Mana",
    "~/Library/Preferences/com.silent-spell.mana.plist",
  ]
end

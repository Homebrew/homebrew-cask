cask "transnomino" do
  version "8.5.3"
  sha256 "86d921c17a8ce1297ef4758ba99a9c67e0451f8a9329c9941ff821bf73bf797c"

  url "https://www.transnomino.com/download/Transnomino-#{version}.dmg"
  name "Transnomino"
  desc "Batch rename utility"
  homepage "https://www.transnomino.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Transnomino[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Transnomino.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/com.bastiaanverreijt.Transnomino.help*",
    "~/Library/HTTPStorages/com.bastiaanverreijt.Transnomino",
    "~/Library/Preferences/com.bastiaanverreijt.Transnomino.plist",
  ]
end

cask "transnomino" do
  version "8.5.1"
  sha256 "6ba91b389c9fa4f5238de2d3d6b8c2e3b9b8e49aaea9909f81b3bc413017d37d"

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

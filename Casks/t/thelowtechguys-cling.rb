cask "thelowtechguys-cling" do
  version "1.2.2"
  sha256 "d1769677acdac2f86f958be5fbccddf733cdd3ee1995f341a550636d81727b6b"

  url "https://files.lowtechguys.com/releases/Cling-#{version}.dmg"
  name "The low-tech guys Cling"
  desc "Instant fuzzy finder for files including system and hidden files"
  homepage "https://lowtechguys.com/cling"

  livecheck do
    url "https://files.lowtechguys.com/cling/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Cling.app"

  zap trash: [
    "~/Library/Application Scripts/com.lowtechguys.Cling",
    "~/Library/Caches/Cling",
    "~/Library/Caches/com.lowtechguys.Cling",
    "~/Library/HTTPStorages/com.lowtechguys.Cling",
    "~/Library/Preferences/com.lowtechguys.Cling.plist",
  ]
end

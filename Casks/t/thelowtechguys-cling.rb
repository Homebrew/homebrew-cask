cask "thelowtechguys-cling" do
  version "2.6.1"
  sha256 "d8793451964249c0df796be94c5a4e48c59f625a1f4c15b23e0f4846e1986327"

  url "https://files.lowtechguys.com/releases/Cling-#{version}.dmg"
  name "The low-tech guys Cling"
  desc "Instant fuzzy finder for files including system and hidden files"
  homepage "https://lowtechguys.com/cling"

  livecheck do
    url "https://files.lowtechguys.com/cling/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Cling.app"

  zap trash: [
    "~/Library/Application Scripts/com.lowtechguys.Cling",
    "~/Library/Caches/Cling",
    "~/Library/Caches/com.lowtechguys.Cling",
    "~/Library/HTTPStorages/com.lowtechguys.Cling",
    "~/Library/Preferences/com.lowtechguys.Cling.plist",
  ]
end

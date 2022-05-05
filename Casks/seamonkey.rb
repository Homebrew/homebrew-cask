cask "seamonkey" do
  version "2.53.11.1"

  language "de" do
    sha256 "a41fab15f62c6b103b2eeeae89bd53e1edacf213bd64311eed9b65574044f50e"
    "de"
  end
  language "en-GB" do
    sha256 "ca9782ff7faa9bbe39f3e62df37aacf2c1f4d245863d0f5bd2eee8351f6c9add"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "9a77392979b87347cd2f322bdf55b20b0367655c1210d73bc3ebe827c1a8c0c8"
    "en-US"
  end
  language "fr" do
    sha256 "99fc1188b9bc45419574fbbdf351b5e8bad2982922640718c503051a0897abbc"
    "fr"
  end
  language "it" do
    sha256 "87cb3a762f5b7981860cae46b82c6d008b7596ca92636014b86599c771c4440b"
    "it"
  end
  language "ru" do
    sha256 "05571febd004c78245d37e7ddfc29aab6f9602422acd464c833d127bd9b18b58"
    "ru"
  end

  url "https://archive.mozilla.org/pub/seamonkey/releases/#{version}/mac/#{language}/seamonkey-#{version}.#{language}.mac.dmg",
      verified: "mozilla.org/pub/seamonkey/releases/"
  name "SeaMonkey"
  desc "Development of SeaMonkey Internet Application Suite"
  homepage "https://www.seamonkey-project.org/"

  livecheck do
    url "https://www.seamonkey-project.org/releases/"
    regex(%r{href=.*?/seamonkey-(\d+(?:\.\d+)+)\.en-US\.mac\.dmg}i)
  end

  auto_updates true

  app "SeaMonkey.app"

  zap trash: [
    "~/Library/Application Support/SeaMonkey",
    "~/Library/Caches/SeaMonkey",
    "~/Library/Preferences/org.mozilla.seamonkey.plist",
    "~/Library/Saved Application State/org.mozilla.seamonkey.savedState",
  ]
end

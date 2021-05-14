cask "seamonkey" do
  version "2.53.7.1"

  language "de" do
    sha256 "e9d38b495ad95f980852caa6126c3ec6c3ee96f7df3e8579dc468a7d44dc2ffa"
    "de"
  end
  language "en-GB" do
    sha256 "0708c7faf96090ebbf2d0d27a321bff24c2c6dc74550be71a353d5aadf896b80"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "d119078149d42c5055558339c413e1a86341fbc7431fddd49833eadf7521958c"
    "en-US"
  end
  language "fr" do
    sha256 "5b76846616780743f655fa005369db432fb1b9925ba98c924a873e4cec3d81a0"
    "fr"
  end
  language "it" do
    sha256 "5241f802670be852406b66784598f901ae92121ef540d4136e4b7179b159628e"
    "it"
  end
  language "ru" do
    sha256 "e46dc04b8f917011df15a722d5f732fc4f4d36251d2a9494edaa068ec084cb1c"
    "ru"
  end

  url "https://archive.mozilla.org/pub/seamonkey/releases/#{version}/mac/#{language}/seamonkey-#{version}.#{language}.mac.dmg",
      verified: "mozilla.org/pub/seamonkey/releases/"
  name "SeaMonkey"
  desc "Development of SeaMonkey Internet Application Suite"
  homepage "https://www.seamonkey-project.org/"

  livecheck do
    url "https://www.seamonkey-project.org/releases/"
    strategy :page_match
    regex(%r{href=.*?/seamonkey-(\d+(?:\.\d+)*)\.en-US\.mac\.dmg}i)
  end

  auto_updates true

  app "SeaMonkey.app"
end

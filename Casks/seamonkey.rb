cask "seamonkey" do
  version "2.53.10.2"

  language "de" do
    sha256 "8b1dbe420aac87e727e8b4a834a667eb25b1d1f2f14174a47813af7ba0b49f8e"
    "de"
  end
  language "en-GB" do
    sha256 "8ab2ffd759d17e2b2332fe15e423e3785a28e9650eb478cd652104ffa097f7da"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "c18640c618558fd667b41074ebe125caef779dd8a044b5c82749ddda66f2597c"
    "en-US"
  end
  language "fr" do
    sha256 "4ed31c7572f97b8ba15986c88d8908b0a048a2121c9799501b63174069743b8b"
    "fr"
  end
  language "it" do
    sha256 "952f029302379292aa79a528bca75b6f5b998dc98371aaa18b83e0653237434e"
    "it"
  end
  language "ru" do
    sha256 "f7a48efd7cff44ae4fdde6817f6cbcc60f5bd9b7fabce2cf960cd1ecbbc55718"
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

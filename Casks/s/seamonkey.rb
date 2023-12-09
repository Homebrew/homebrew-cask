cask "seamonkey" do
  version "2.53.18"

  language "de" do
    sha256 "d25a41050c31827b2b0c3f7d46bb481d24518028cd4d8084d460dbad403d6a8f"
    "de"
  end
  language "en-GB" do
    sha256 "7b39bb66831c459dc3a7c79050f4c584f6c0fc41f10d239871eca94c1b2fef75"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "ef6587921d64b68301466123788d7aa564eeaed26da77536919ab893164cb2fa"
    "en-US"
  end
  language "fr" do
    sha256 "337ceae11f54b6b08ce5697175a8aa162f0ce291e31493989f2ae909b4a3f10f"
    "fr"
  end
  language "it" do
    sha256 "b5536392da529331be0622ba7b2304615d3874a9e16f41279e72d73cdad8d286"
    "it"
  end
  language "ru" do
    sha256 "16c7e4da714993eee1650529e8835780a0da2b235a9fd61f5f5c581d373206ed"
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

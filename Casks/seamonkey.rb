cask "seamonkey" do
  version "2.53.14"

  language "de" do
    sha256 "9bf3f01c634b602d09a1b6824566946689a3beee948069761af34d9e7f71e8f6"
    "de"
  end
  language "en-GB" do
    sha256 "bce8a04b44f0848476747e1dcf6fc5ce587bfdcacb9772299d629293c8ef6e4c"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "c3dc74bebf34666a12526c407c8ac088da58f97f871b42b20b259908a8de790b"
    "en-US"
  end
  language "fr" do
    sha256 "a2e011dcd19a3886f0c3b6e262efb1294999634bc3fffb17a794ac5b1ad7aad8"
    "fr"
  end
  language "it" do
    sha256 "228291368b8ec0b25d0af656a60f37dc4dff1f070443c522eaa824cc451fc570"
    "it"
  end
  language "ru" do
    sha256 "5720a410849c5626f4cde3ea92cdbdc773c96eaad08839608b7dec11d54d4619"
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

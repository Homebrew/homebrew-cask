cask "seamonkey" do
  version "2.53.15"

  language "de" do
    sha256 "5aa3d429d5bd459720b9722b51c833778a1ec20afdfff92de0df1b0608047f5c"
    "de"
  end
  language "en-GB" do
    sha256 "e4c7d75efd57bdc2c087b8b3dd4c7795e71c2d6c1c7fc8383c08e993a4e32ca3"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "2f8e4fda07505b06bb50cb3dd0ca58610f2634864b745c0cbcd2dc896a2c5817"
    "en-US"
  end
  language "fr" do
    sha256 "58cfba07a98e67a126c85d2563ea355800cee72ec094b9361a203efbfda55422"
    "fr"
  end
  language "it" do
    sha256 "cecbbe3eda0b58f64679a7d4a45db66c91bdfb906b2db3d5fbd99649ea36ae5e"
    "it"
  end
  language "ru" do
    sha256 "1538b72b0ef3be9f305dad680d2bcdfae42d8701e7e82d8d75bd34004de76f16"
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

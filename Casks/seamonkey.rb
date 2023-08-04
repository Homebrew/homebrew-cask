cask "seamonkey" do
  version "2.53.17"

  language "de" do
    sha256 "982816f00371c22c44366205d9b7d8b3c179ca57a59479a49adf4b2dd25358bd"
    "de"
  end
  language "en-GB" do
    sha256 "896ee8b7146597640b700623824742ac5d64ecaf11b7403d8af431b1ff7ac560"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "1dfbbaebec46ac73e0110dcf2c514d4ab6fbc97e5a662566222871c0ae94e4db"
    "en-US"
  end
  language "fr" do
    sha256 "da2c7f7951e1eb58933eeabc3465313d926e4f58ecf04e2a85d7baa424254943"
    "fr"
  end
  language "it" do
    sha256 "b35ed88705b1adc9ac1bed36ee2ea4542f3c294b1ef32a76d6765beec68d91cf"
    "it"
  end
  language "ru" do
    sha256 "e1a4363678970b381e86019d3fd21a2e571a869679737dadbf5bca6da94720d6"
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

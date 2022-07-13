cask "seamonkey" do
  version "2.53.13"

  language "de" do
    sha256 "d6a385816e103a80c578b9c95f8d68a43a159616c608e8ae1add51173930ab3d"
    "de"
  end
  language "en-GB" do
    sha256 "3ddc6f00b2946f238e53d105f2124448893b04eada2ccb36afb2105de440f67b"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "b7d4dd48b1370b9079699f62c13680c37542968b7b9643fd8e7646685789923c"
    "en-US"
  end
  language "fr" do
    sha256 "99682140040ed5b85b7d49bb93fe94cbcd3c24c7244413630a3842c0a82351cf"
    "fr"
  end
  language "it" do
    sha256 "9fa92c3ffb1c2dfc27a4aef42204725039d94cd3fd9ff522fbd465353e32a856"
    "it"
  end
  language "ru" do
    sha256 "4b5b5559e2fe3d78b14e9a53c05297138184b8bccf7b78bc368657a81fb7b210"
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

cask "seamonkey" do
  version "2.53.9"

  language "de" do
    sha256 "b7bf932dc16960fe9c6d775109c8bbf783819f07fbbd2d4842f05364a1e166eb"
    "de"
  end
  language "en-GB" do
    sha256 "af254a77b8efb6f91da783434df602ccf2782f36618dc7b39066ed813d00775c"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "894ce12f3476d2862eabc50f765df501dea8a502813184d89b6ebda52ec5525c"
    "en-US"
  end
  language "fr" do
    sha256 "fd4e06cd038d1a9b51b6bec4aeceb3fd94608b69667a98c05bc7210c1842141f"
    "fr"
  end
  language "it" do
    sha256 "a1383287bf32adcb47088eff7bd5719ab49b2b105c366f2a27cff5f1c3e6e744"
    "it"
  end
  language "ru" do
    sha256 "5103aa8bd5c378df5f7944b6f9494a91f60ac59ac3c6c388094a0377cbed989e"
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

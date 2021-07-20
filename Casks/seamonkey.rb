cask "seamonkey" do
  version "2.53.8"

  language "de" do
    sha256 "d612f5c3d5ca2140efa511d45d80efe2147dcc89ab3a22e331274cd498fc50b9"
    "de"
  end
  language "en-GB" do
    sha256 "43c5aa52a5556af8024efaad804a7a9f500268e66767cf0f27d69a18d68e9ad9"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "f775310d8849b39befcf0cb283e75a1c205f87029184d51eeb2f5040b0ed745a"
    "en-US"
  end
  language "fr" do
    sha256 "bc2867fe00b3303d8546d68f886afd9dde564bcfc683c4ec4e72da91870573fc"
    "fr"
  end
  language "it" do
    sha256 "e04b1d25083782e9b7c44c3b752941f8ebaf753903c577817ab3a0a124beef1d"
    "it"
  end
  language "ru" do
    sha256 "bf05a51dcfaeea1a9dd7a3b439b443b68d6d099d0d4787273cbc749047296dfc"
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

cask "seamonkey" do
  version "2.53.8.1"

  language "de" do
    sha256 "3b27bf2ab6022c25ca0686b27438a029bef3886d1d5f729780f2efad12118f61"
    "de"
  end
  language "en-GB" do
    sha256 "1d881f9a055e3d13386f47101b54d6a8ca877a0bdbb1659b2edb14077fed9938"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "760da1e6c6e1ab105a5ed3dd0fca5c2c98a76e151927e2a9b51fcc9c58fcf6fc"
    "en-US"
  end
  language "fr" do
    sha256 "3a241541e35a60e8ea03471a6a3008550386b43c4bdfd338fdc10b7c417b2ca2"
    "fr"
  end
  language "it" do
    sha256 "53fb3db516bd40b4f9b3659b4ebd506a8bacb050e454aacd5515bd984845590f"
    "it"
  end
  language "ru" do
    sha256 "537c12aaa7e325bccc27cd1776517127eb9344e63339cd7d35b6e412812a9886"
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

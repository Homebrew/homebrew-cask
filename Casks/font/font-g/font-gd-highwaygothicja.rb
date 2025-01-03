cask "font-gd-highwaygothicja" do
  version "112b2"
  sha256 "7f9af8273b302fdd1dbd85cee8060833b8fd872d244686899b0c5c62c3ffc951"

  url "https://542.jp/font/data/GDHighwayGoJA-Rev#{version}-OTF.zip"
  name "GD-HighwayGothicJA"
  name "GD-高速道路ゴシックJA"
  homepage "https://542.jp/font/"

  livecheck do
    url :homepage
    regex(/GDHighwayGoJA[._-]Rev(\d+(?:\.\d+)*(?:b\d+)?)[._-]OTF\.zip/)
  end

  font "GDHighwayGoJA-Rev#{version}-OTF/GDhwGoJA-OTF#{version}.otf"

  # No zap stanza required
end

cask "seamonkey" do
  version "2.53.5"

  language "de" do
    sha256 "2111c4a6aa3efb96f016e31e0d1cc565062dea4eb35570dc89bc0bd74521a82d"
    "de"
  end
  language "en-GB" do
    sha256 "68cb445457ba14c4570b3a90bb84ddddadee76e5747d403acd840f343a87accf"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "a88915ea2e48fe46c70eb3c4c3f1de600e75d1f2eb42bd591984d273413d0ac2"
    "en-US"
  end
  language "fr" do
    sha256 "47b2f2e156379eb110d84fe41a49ad38aacfe43f41b3eef40b0d56e4beacd4e5"
    "fr"
  end
  language "it" do
    sha256 "e5b53e70d6a2ee621863f0ad26bb63b5e730ae8607aaa66c0ee41fe55dc80d85"
    "it"
  end
  language "ru" do
    sha256 "19598820e5f96637a02db78624874aaaf0bfdf3fa22b28378a2cbc23635a310e"
    "ru"
  end

  # mozilla.org/pub/seamonkey/releases/ was verified as official when first introduced to the cask
  url "https://archive.mozilla.org/pub/seamonkey/releases/#{version}/mac/#{language}/seamonkey-#{version}.#{language}.mac.dmg"
  appcast "https://www.seamonkey-project.org/releases/"
  name "SeaMonkey"
  desc "Development of SeaMonkey Internet Application Suite"
  homepage "https://www.seamonkey-project.org/"

  auto_updates true

  app "SeaMonkey.app"
end

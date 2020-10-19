cask "seamonkey" do
  version "2.53.4"

  language "de" do
    sha256 "028b526965be854a81e9f09429ef2787a8f296a3c461116804bdea236e6b3b01"
    "de"
  end
  language "en-GB" do
    sha256 "edbb5845566c986239f5ba0ed1941d6e43d36d72adbc3f7e32375953c89855a2"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "c3f2603a141878ce0e7b2cab3d3351a32707b00b677b79b395cc969a08873020"
    "en-US"
  end
  language "fr" do
    sha256 "eec9e5fbad24be0d8331951f332597c3fdc3174bc3f4b20103b3b01fa2c31f6e"
    "fr"
  end
  language "it" do
    sha256 "f9972ff9a80bca3f9c7404a8281f5162363fb100f3d4a33fd4e0aba7ac8aa65c"
    "it"
  end
  language "ru" do
    sha256 "0eec1ff3c9f015cc5ef0ce8e94bfce352c02906df49703b34086a5fb5e81fb8a"
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

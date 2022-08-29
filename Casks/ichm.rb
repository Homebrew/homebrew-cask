cask "ichm" do
  version "1.5.2"
  sha256 "2630d05f085f24324eb6720131af738358dd01ea9e500bb01686352c679f96f0"

  url "https://github.com/vit9696/iChm/releases/download/#{version}/iChm-#{version}-RELEASE.dmg"
  name "iChm"
  desc "CHM reader"
  homepage "https://github.com/vit9696/iChm"

  app "iChm.app"
end

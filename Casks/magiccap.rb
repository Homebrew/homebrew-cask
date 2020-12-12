cask "magiccap" do
  version "2.1.2"
  sha256 "98bfe7b74f112d8887cc64befe494a92909eac26e20103923caf01a71a364944"

  # github.com/magiccap/MagicCap/ was verified as official when first introduced to the cask
  url "https://github.com/magiccap/MagicCap/releases/download/v#{version}/magiccap-mac.dmg"
  appcast "https://github.com/magiccap/MagicCap/releases.atom"
  name "MagicCap"
  desc "Image/GIF capture suite"
  homepage "https://magiccap.me/"

  app "MagicCap.app"
end

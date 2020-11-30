cask "fontlab" do
  version "7.2.0.7622"
  sha256 "0d33b14acdf6b6b83e725f8a0e8c3bf53dcac68d7ec9acc0be3fa02ace9f837d"

  # fontlab.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://fontlab.s3.amazonaws.com/fontlab-#{version.major}/#{version.split(".").last}/FontLab-#{version.major}-Mac-Install-#{version.split(".").last}.dmg"
  appcast "https://download.fontlab.com/fontlab-#{version.major}/appcast-mac.xml"
  name "Fontlab"
  desc "Professional font editor"
  homepage "https://www.fontlab.com/font-editor/fontlab/"

  auto_updates true

  app "FontLab #{version.major}.app"
end

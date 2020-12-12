cask "fontlab" do
  version "7.2.0.7644"
  sha256 "26d3f9f2d300edf4973d27ac56006fd600195452e2995770f6157fa9f0620be8"

  # fontlab.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://fontlab.s3.amazonaws.com/fontlab-#{version.major}/#{version.split(".").last}/FontLab-#{version.major}-Mac-Install-#{version.split(".").last}.dmg"
  appcast "https://download.fontlab.com/fontlab-#{version.major}/appcast-mac.xml"
  name "Fontlab"
  desc "Professional font editor"
  homepage "https://www.fontlab.com/font-editor/fontlab/"

  auto_updates true

  app "FontLab #{version.major}.app"
end

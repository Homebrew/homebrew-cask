cask "fontlab" do
  version "7.2.0.7608"
  sha256 "39316acff4202cadab6c3f3aa15c1c570ef56fa17489dea40865d9c45f58be1e"

  # fontlab.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://fontlab.s3.amazonaws.com/fontlab-#{version.major}/#{version.split(".").last}/FontLab-#{version.major}-Mac-Install-#{version.split(".").last}.dmg"
  appcast "https://download.fontlab.com/fontlab-#{version.major}/appcast-mac.xml"
  name "Fontlab"
  desc "Professional font editor"
  homepage "https://www.fontlab.com/font-editor/fontlab/"

  auto_updates true

  app "FontLab #{version.major}.app"
end

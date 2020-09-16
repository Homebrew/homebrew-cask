cask "fontlab" do
  version "7.1.4.7515"
  sha256 "5b09d73ead8c5c265ba5be7cfbfd693e345ec4100648e179f57da6e799537257"

  # fontlab.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://fontlab.s3.amazonaws.com/fontlab-#{version.major}/#{version.split(".").last}/FontLab-#{version.major}-Mac-Install-#{version.split(".").last}.dmg"
  appcast "https://download.fontlab.com/fontlab-#{version.major}/appcast-mac.xml"
  name "Fontlab"
  desc "Professional font editor"
  homepage "https://www.fontlab.com/font-editor/fontlab/"

  auto_updates true

  app "FontLab #{version.major}.app"
end

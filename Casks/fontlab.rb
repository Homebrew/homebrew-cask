cask "fontlab" do
  version "7.2.0.7614"
  sha256 "d55ed082bb8114ee7f5e83fe49d2d0fea92a5bfd1e5bd40402fb643d405f913a"

  # fontlab.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://fontlab.s3.amazonaws.com/fontlab-#{version.major}/#{version.split(".").last}/FontLab-#{version.major}-Mac-Install-#{version.split(".").last}.dmg"
  appcast "https://download.fontlab.com/fontlab-#{version.major}/appcast-mac.xml"
  name "Fontlab"
  desc "Professional font editor"
  homepage "https://www.fontlab.com/font-editor/fontlab/"

  auto_updates true

  app "FontLab #{version.major}.app"
end

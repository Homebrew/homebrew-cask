cask "colorpicker-skalacolor" do
  version "2.10"
  sha256 "18205f0e827116de72822064f7b10f624bb6696f90bd067e4ba90a18acba34a2"

  # bjango.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://bjango.s3.amazonaws.com/files/skalacolor/skalacolor#{version}.zip"
  name "Skala Color"
  homepage "https://bjango.com/help/skalacolor/gettingstarted/"

  colorpicker "Skala Color Installer.app/Contents/Resources/SkalaColor.colorPicker"
end

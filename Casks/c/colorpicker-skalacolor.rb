cask "colorpicker-skalacolor" do
  version "2.10"
  sha256 "18205f0e827116de72822064f7b10f624bb6696f90bd067e4ba90a18acba34a2"

  url "https://files.bjango.com/skalacolor/skalacolor#{version}.zip"
  name "Skala Color"
  desc "Colour picker"
  homepage "https://bjango.com/help/skalacolor/gettingstarted/"

  deprecate! date: "2023-06-25", because: :unmaintained

  colorpicker "Skala Color Installer.app/Contents/Resources/SkalaColor.colorPicker"
end

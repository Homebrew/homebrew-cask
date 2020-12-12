cask "colorpicker-developer" do
  version "1.5.4"
  sha256 :no_check

  url "https://download.panic.com/picker/developercolorpicker.zip"
  name "Developer Color Picker"
  homepage "https://download.panic.com/picker/index.html"

  colorpicker "Developer Color Picker/DeveloperColorPicker.colorPicker"

  caveats do
    discontinued
  end
end

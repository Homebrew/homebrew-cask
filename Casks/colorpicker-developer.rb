cask "colorpicker-developer" do
  version "1.5.4"
  sha256 "aec40fd978e7fb07b9a1743bf73f5a45f03243ec0f76ac559368050e1c6476b8"

  url "https://download.panic.com/picker/developercolorpicker.zip"
  name "Developer Color Picker"
  homepage "https://download.panic.com/picker/index.html"

  colorpicker "Developer Color Picker/DeveloperColorPicker.colorPicker"

  caveats do
    discontinued
  end
end

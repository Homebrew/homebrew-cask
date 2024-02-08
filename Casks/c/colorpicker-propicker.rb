cask "colorpicker-propicker" do
  version "1.1"
  sha256 :no_check

  url "https://irradiated.net/files/pro-picker.zip"
  name "Pro Picker"
  homepage "https://irradiated.net/tool/pro-picker/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  colorpicker "ProPicker.colorPicker"
end

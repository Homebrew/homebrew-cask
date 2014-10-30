class ColorpickerPropicker < Cask
  version '1.0'
  sha256 'd1c07c116fee22dbbaea86c285327b5468b82863ba575e8fe462a2dcec023891'

  # todo, the URL indicates there is an appcast
  url "http://www.irradiated.net/appcasts/pro-picker/releases/#{version}/ProPicker.zip"
  homepage 'http://www.irradiated.net/?page=pro-picker'
  license :unknown

  colorpicker 'ProPicker.colorPicker'
end

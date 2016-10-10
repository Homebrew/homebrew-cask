cask 'colorpicker-antetype' do
  version '1.4.1'
  sha256 '5b7a925b87ff9ae5b4978170483a5a6f9e7d18ce81e2e0c6cce8731b6626b152'

  url "http://www.antetype.com/blog/downloads/AntetypeColorPickerOSX-#{version.dots_to_hyphens}.zip"
  name 'Antetype Color Picker'
  homepage 'http://www.antetype.com/blog/2014/03/updated-antetype-color-picker-1-4-1/'

  colorpicker 'AntetypeColorPicker.colorPicker'
end

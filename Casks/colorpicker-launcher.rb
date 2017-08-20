cask 'colorpicker-launcher' do
  version '0.1'
  sha256 'c9d36506c45c86ddcccbc94ca852b9a531e7b0194949216e26bf463bc988a477'

  url "https://github.com/nrlquaker/color-picker-launcher/archive/v#{version}.zip"
  appcast 'https://github.com/nrlquaker/color-picker-launcher/releases.atom',
          checkpoint: '80c2518b5c7fc077f05bff19dd3b2b3020325931a8ac63018c9dd69f6b228147'
  name 'Color Picker'
  homepage 'https://github.com/nrlquaker/color-picker-launcher'

  app "color-picker-launcher-#{version}/Color Picker.app"
end

cask 'quickhue' do
  version :latest
  sha256 :no_check

  url 'https://github.com/danparsons/QuickHue/raw/master/QuickHue.zip'
  name 'QuickHue'
  homepage 'https://github.com/danparsons/QuickHue'
  license :mit

  app 'QuickHue.app'
end

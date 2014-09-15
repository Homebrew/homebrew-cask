class Quickhue < Cask
  version 'latest'
  sha256 :no_check

  url 'https://github.com/danparsons/QuickHue/raw/master/QuickHue.zip'
  homepage 'https://github.com/danparsons/QuickHue'

  app 'QuickHue.app'
end

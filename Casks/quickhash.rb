cask 'quickhash' do
  version '3.0.2,1623'
  sha256 '13fdfabc3fcedca527af7b5d4da1be44709ba94eaea44ceed0033ce5f5d4e574'

  url "https://quickhash-gui.org/download/quickhash-v#{version.before_comma.dots_to_hyphens}-for-apple-mac-osx/?wpdmdl=#{version.after_comma}"
  name 'Quickhash'
  homepage 'https://quickhash-gui.org/'

  app 'AppleOSX/QuickHash.app'
end

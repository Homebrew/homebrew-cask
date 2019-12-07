cask 'quickhash' do
  version '3.1.0,1935'
  sha256 'daee7887ad4b5856822ea139446a45c8e7c49bf4265cdec563f73fd07554f412'

  url "https://quickhash-gui.org/download/quickhash-v#{version.before_comma.dots_to_hyphens}-for-apple-osx/?wpdmdl=#{version.after_comma}"
  appcast 'https://quickhash-gui.org/downloads/'
  name 'Quickhash'
  homepage 'https://quickhash-gui.org/'

  app 'QuickHash.app'
end

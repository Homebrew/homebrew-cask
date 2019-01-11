cask 'quickhash' do
  version '3.0.3,1770'
  sha256 '04486fa4d192ab12b19efb3213f4b2f66713de2ca098183d7acf736a87246f60'

  url "https://quickhash-gui.org/download/quickhash-v#{version.before_comma.dots_to_hyphens}-for-apple-mac-osx/?wpdmdl=#{version.after_comma}"
  name 'Quickhash'
  homepage 'https://quickhash-gui.org/'

  app 'QuickHash.app'
end

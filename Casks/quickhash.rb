cask 'quickhash' do
  version '2.8.1,379'
  sha256 '64afa9be2625ff0d0544cf944faa467f412777457c102fe0dd789b4566afb0e3'

  url "http://quickhash-gui.org/download/quickhash-v#{version.before_comma.dots_to_hyphens}-for-apple-mac-osx/?wpdmdl=#{version.after_comma}"
  name 'Quickhash'
  homepage 'http://quickhash-gui.org/'

  app 'OSX/QuickHash.app'
end

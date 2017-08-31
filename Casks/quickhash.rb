cask 'quickhash' do
  version '2.8.2,396'
  sha256 '527670f17fdfec451c8808e62baeb44d2c831efb019f195bbaebad8e0addec34'

  url "http://quickhash-gui.org/download/quickhash-v#{version.before_comma.dots_to_hyphens}-for-apple-mac-osx/?wpdmdl=#{version.after_comma}"
  name 'Quickhash'
  homepage 'https://quickhash-gui.org/'

  app "QuickHash-v#{version.before_comma}-OSX"
end

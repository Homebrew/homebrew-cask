cask 'quickhash' do
  version '2.7.0'
  sha256 'a9e4acad2fa726a38972258f5a6f30f0c19ce789450367019b11452fcae0d0fe'

  url "http://quickhash-gui.org/download/quickhash-v#{version.dots_to_hyphens}-for-apple-mac-osx/?wpdmdl=206"
  name 'Quickhash'
  homepage 'http://quickhash-gui.org/'

  app "QuickHash-AppleMacOSX-v#{version}/QuickHash.app"
end

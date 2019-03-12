cask 'powerword' do
  version '1.1.1,1.0.1'
  sha256 '87c5347065f37342939b9d9c1874a582f9a144d0a5d494152035cffcc4ca8a5b'

  url "https://download.iciba.com/mac/mac#{version.after_comma}/PowerWord.dmg"
  name 'PowerWord'
  name '金山词霸'
  homepage 'http://cp.iciba.com/mac/'

  app '金山词霸.app'
end

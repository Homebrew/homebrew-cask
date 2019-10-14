cask 'powerword' do
  version '1.1.2,1.0.1'
  sha256 '708007eeab118925f2d7828c95a0043e260069547b7e98ae7a3f780f5a296711'

  url "https://download.iciba.com/mac/mac#{version.after_comma}/PowerWord.dmg"
  name 'PowerWord'
  name '金山词霸'
  homepage 'https://cp.iciba.com/mac/'

  app '金山词霸.app'
end

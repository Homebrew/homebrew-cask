cask 'powerword' do
  version '1.1.3,1.0.1'
  sha256 '2a5b45a6e7d02a80917e2594ee818ff3022c6df7f429af97429c6f98d2befd39'

  url "https://download.iciba.com/mac/mac#{version.after_comma}/PowerWord.dmg"
  name 'PowerWord'
  name '金山词霸'
  homepage 'http://cp.iciba.com/mac/'

  app '金山词霸.app'
end

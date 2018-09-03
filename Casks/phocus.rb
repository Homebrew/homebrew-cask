cask 'phocus' do
  version '3.3.6'
  sha256 '1bed922bae1e0bf9da2d24b17af026566f5c58b5d3c8d596929176d87c46c610'

  url "http://static.hasselblad.com/2018/05/Phocus-#{version}.dmg"
  name 'Hasselblad Phocus'
  homepage 'https://www.hasselblad.com/software/phocus'

  app 'Phocus.app'
end

cask 'prezi-classic' do
  version '6.12.1'
  sha256 '03e014d0944f51ecb91f93c45d07d8fb1a0d5ed226d6d3b68b6d12d4bfbc9f53'

  url "https://desktopassets.prezi.com/mac/pd6/releases/Prezi_Classic_#{version}.dmg"
  name 'Prezi Classic'
  homepage 'https://prezi.com/desktop'

  app 'Prezi Classic.app'
end

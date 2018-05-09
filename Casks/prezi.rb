cask 'prezi' do
  version '6.10.0'
  sha256 '494c8d6cd63222b17de6ba0e90d6a5c29d13aa40479226b4b8ac0a5cda49a495'

  url "https://desktopassets.prezi.com/mac/pd6/releases/Prezi_Classic_#{version}.dmg"
  name 'Prezi'
  homepage 'https://prezi.com/'

  app 'Prezi.app'
end

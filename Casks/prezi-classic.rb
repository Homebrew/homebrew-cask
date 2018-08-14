cask 'prezi-classic' do
  version '6.13.1'
  sha256 '9870c55a6e7f9d6163bb45e8a4eadb39192319219638941b08a9eb10841750fb'

  url "https://desktopassets.prezi.com/mac/pd6/releases/Prezi_Classic_#{version}.dmg"
  name 'Prezi Classic'
  homepage 'https://prezi.com/desktop'

  app 'Prezi Classic.app'
end

cask 'biscuit' do
  version '1.1.4'
  sha256 '77919a62b9ae4a7c130ed739c2307bef80c5755093ba1af77aa78073dc39141f'

  # github.com/agata/dl.biscuit was verified as official when first introduced to the cask
  url "https://github.com/agata/dl.biscuit/releases/download/v#{version}/Biscuit-#{version}.dmg"
  appcast 'https://github.com/agata/dl.biscuit/releases.atom'
  name 'Biscuit'
  homepage 'https://eatbiscuit.com/'

  app 'Biscuit.app'
end

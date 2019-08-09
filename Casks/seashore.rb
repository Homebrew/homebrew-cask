cask 'seashore' do
  version '2.4.9'
  sha256 'e6e09bbc5f5c69c0b0d7ba3219fdb7785c98a7571d079e7909ab7ff1797974d5'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end

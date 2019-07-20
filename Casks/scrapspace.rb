cask 'scrapspace' do
  version '0.1.1'
  sha256 '2e723f7bf4b49a9f3142dafa50a26de03b263989415a17cb360d51ba2f9efda6'

  # github.com/shoya140/scrapspace was verified as official when first introduced to the cask
  url "https://github.com/shoya140/scrapspace/releases/download/v#{version}/Scrapspace-mac.dmg"
  appcast 'https://github.com/shoya140/scrapspace/releases.atom'
  name 'Scrapspace'
  homepage 'https://scrapspace.shoya.io/'

  app 'Scrapspace.app'
end

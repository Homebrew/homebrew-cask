cask 'bitshares' do
  version '2.0.180201'
  sha256 '59c1816176a87e7bd2bfda170eecd0a47a30f499868bfa13c9f22e08c2362e1e'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom',
          checkpoint: 'ea8f4ba5cf4778f6f9bf1950f2d7d4b1dee0814e12b2347b0a2d72553130ba91'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end

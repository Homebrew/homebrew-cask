cask 'bitshares' do
  version '2.0.171219'
  sha256 'b52681b75824eceaedf9068936e0afea50533747ecef1bf56e629f26b375fb52'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom',
          checkpoint: 'b94c394a522a3507452749b57d1c01b6bba5ff875a6c5da1f077b695241cb717'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end

cask 'bitshares' do
  version '2.0.171102'
  sha256 'cc06cff51605714bdb8c07d74cf38012e159c5b7142b1598c87c66bf21306205'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom',
          checkpoint: '9f070dafd1a6116440cdbf90f1d5609bf528fd07aba8936745ace8423721868f'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end

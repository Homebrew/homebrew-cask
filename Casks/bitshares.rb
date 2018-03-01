cask 'bitshares' do
  version '2.0.180215'
  sha256 '07e3992a7cb82424b498979f324ec4590a5bb6dfc8258d43f3b8b2acf5ce20c4'

  # github.com/bitshares/bitshares-ui was verified as official when first introduced to the cask
  url "https://github.com/bitshares/bitshares-ui/releases/download/#{version}/BitShares-#{version}.dmg"
  appcast 'https://github.com/bitshares/bitshares-ui/releases.atom',
          checkpoint: '9d734ddfd2b917e0a9f907b049a92eda89fd115c3a2e2187e5f5119f4e6de2ac'
  name 'BitShares'
  homepage 'https://bitshares.org/'

  app 'BitShares.app'
end

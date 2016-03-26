cask 'bitcoin-xt' do
  version '0.11E'
  sha256 '1a1dcfcaef0d3cf87b8994eca25aa53789650220c783488e10eb74eac287d40a'

  # github.com/bitcoinxt/bitcoinxt was verified as official when first introduced to the cask
  url "https://github.com/bitcoinxt/bitcoinxt/releases/download/v#{version}/BitcoinXT-#{version}.dmg",
      referer: 'https://github.com/bitcoinxt/bitcoinxt/releases/',
      cookies: {
                 'i_follow_redirects' => 'yes',
                 'logged_in'          => 'no',
               }
  appcast 'https://github.com/bitcoinxt/bitcoinxt/releases.atom',
          checkpoint: '843d6ef3717eaf20b2e88f78e3eacae10dc745a0c134f34187acfdbfcfdb4d8d'
  name 'Bitcoin XT'
  homepage 'https://bitcoinxt.software/'
  license :oss

  app 'Bitcoin-XT.app'
end

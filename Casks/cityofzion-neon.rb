cask 'cityofzion-neon' do
  version '0.1.0'
  sha256 '4017bcc1a9972501c97fbe8e99825faf255c1eee7a10a84cf891d04685e6d96a'

  url "https://github.com/CityOfZion/neon-wallet/releases/download/#{version}/Neon-#{version}.Mac.dmg"
  appcast 'https://github.com/CityOfZion/neon-wallet/releases.atom',
          checkpoint: '6d853ecc6479460a85515bc3e8803ab873e6dd530c1b9bc8866888f809b4c978'
  name 'Neon Wallet'
  homepage 'https://github.com/CityOfZion/neon-wallet'

  app 'Neon.app'
end

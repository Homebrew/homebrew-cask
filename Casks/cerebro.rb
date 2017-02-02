cask 'cerebro' do
  version '0.2.3'
  sha256 'a8c966aea2a3553c68074a4e015b52e18d57270b399158b4994663246f021019'

  # github.com/KELiON/cerebro was verified as official when first introduced to the cask
  url "https://github.com/KELiON/cerebro/releases/download/v#{version}/cerebro-#{version}.dmg"
  appcast 'https://github.com/KELiON/cerebro/releases.atom',
          checkpoint: '93608c23f6cb259cd2dbac3f6d6b462f256eade1d4e15ea3b9a37b2aa7fbd666'
  name 'Cerebro'
  homepage 'https://cerebroapp.com/'

  app 'Cerebro.app'
end

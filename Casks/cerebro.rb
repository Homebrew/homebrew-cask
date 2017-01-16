cask 'cerebro' do
  version '0.2.0'
  sha256 'e5b57ef950be2472c56a5f466890a05f648e6bc67db30f30b7ca6d0521e34211'

  # github.com/KELiON/cerebro was verified as official when first introduced to the cask
  url "https://github.com/KELiON/cerebro/releases/download/#{version}/Cerebro.dmg"
  appcast 'https://github.com/KELiON/cerebro/releases.atom',
          checkpoint: '6f14d2366470f22932456ffa257857b78d8cdd39069b8cb38077099c677744ef'
  name 'Cerebro'
  homepage 'https://cerebroapp.com/'

  app 'Cerebro.app'
end

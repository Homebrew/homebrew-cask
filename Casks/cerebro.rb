cask 'cerebro' do
  version '0.2.5'
  sha256 'e3d77b42b778c7b9f46b35846a2cc4d2149da45052d549456541a893d03a371e'

  # github.com/KELiON/cerebro was verified as official when first introduced to the cask
  url "https://github.com/KELiON/cerebro/releases/download/#{version}/cerebro-#{version}.dmg"
  appcast 'https://github.com/KELiON/cerebro/releases.atom',
          checkpoint: 'da110ee4f7e47efe1d5c12ad5885433855dfce78f07935867d65abf06c2f52cc'
  name 'Cerebro'
  homepage 'https://cerebroapp.com/'

  app 'Cerebro.app'
end

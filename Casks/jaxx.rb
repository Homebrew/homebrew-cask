cask 'jaxx' do
  version '1.3.7'
  sha256 '5a71960a98cf4f09ce1e37d7d50a4d1341210253dc714553d7f2d8180e4ee68a'

  # github.com/Jaxx-io/Jaxx was verified as official when first introduced to the cask
  url "https://github.com/Jaxx-io/Jaxx/releases/download/v#{version}/Jaxx-#{version}.dmg"
  appcast 'https://github.com/Jaxx-io/Jaxx/releases.atom',
          checkpoint: '071a1ed39d4940ed96347ca4aa645b1ee199f4af2736b1cda367536949340358'
  name 'Jaxx Blockchain Wallet'
  homepage 'https://jaxx.io/'

  app 'Jaxx.app'
end

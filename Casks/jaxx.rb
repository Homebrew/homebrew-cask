cask 'jaxx' do
  version '1.3.7'
  sha256 '5a71960a98cf4f09ce1e37d7d50a4d1341210253dc714553d7f2d8180e4ee68a'

  # github.com/Jaxx-io/Jaxx was verified as official when first introduced to the cask
  url "https://github.com/Jaxx-io/Jaxx/releases/download/v#{version}/Jaxx-#{version}.dmg"
  name 'Jaxx Blockchain Wallet'
  homepage 'https://jaxx.io/'

  app 'Jaxx.app'
end

cask 'spillo' do
  version '158_2.0'
  sha256 '0228766974d6a65de9aca459a21e8ff06af813f9c3643ba5a8c98486e3bc8d0c'

  # s3.amazonaws.com/bananafish-builds/spillo was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bananafish-builds/spillo/spillo_#{version}.zip"
  appcast 'https://bananafishsoftware.com/feeds/spillo.xml',
          checkpoint: 'da4a586369b44cc5e04e7a3858de7e89ddf0b5c2fe94f04aa68da111ee99c8a4'
  name 'Spillo'
  homepage 'https://bananafishsoftware.com/products/spillo/'

  app 'Spillo.app'
end

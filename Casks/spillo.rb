cask 'spillo' do
  version '125_1.8.4'
  sha256 '3b47748ccf74ddaf494f6388d97820e73179e814f7ddc80820770a56443779d5'

  # s3.amazonaws.com/bananafish-builds/spillo was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bananafish-builds/spillo/spillo_#{version}.zip"
  appcast 'https://bananafishsoftware.com/feeds/spillo.xml',
          checkpoint: '3e0ca11991d5680afe8f75d37b92e76127ad3fe545acba6de6fe62dc0c46cf0b'
  name 'Spillo'
  homepage 'https://bananafishsoftware.com/products/spillo/'
  license :commercial

  app 'Spillo.app'
end

cask 'pretzel' do
  version '0.0.15'
  sha256 '8cda79066234d2d4fc8c0a3078b72c6d61e433e706e3eb15452dba0b1b7bdce5'

  url "https://download.pretzel.rocks/Pretzel-#{version}-mac.zip"
  appcast 'https://download.pretzel.rocks/latest-mac.json',
          checkpoint: '9f748cc1233eceec6f7ab0d715ac0c8f04ffb2aca3a8081a0050114af3f77711'
  name 'Pretzel'
  homepage 'https://www.pretzel.rocks/'

  app 'Pretzel.app'
end

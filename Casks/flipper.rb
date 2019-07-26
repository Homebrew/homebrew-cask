cask 'flipper' do
  version '0.23.3'
  sha256 '6a15432795e393336116ab8bc2ae906e23d0fd3709eac8477930560fd1655aa5'

  # github.com/facebook/flipper was verified as official when first introduced to the cask
  url "https://github.com/facebook/flipper/releases/download/v#{version}/Flipper.zip"
  appcast 'https://github.com/facebook/flipper/releases.atom'
  name 'Facebook Flipper'
  name 'Sonar'
  homepage 'https://fbflipper.com/'

  app 'Flipper.app'
end

cask 'sonar' do
  version '0.6.12'
  sha256 'f8d69381ec493cc556d03ddabd176c0b8c1204ef13c2a2708ec934dfc2452adc'

  # github.com/facebook/Sonar was verified as official when first introduced to the cask
  url "https://github.com/facebook/Sonar/releases/download/v#{version}/Sonar.zip"
  appcast 'https://github.com/facebook/Sonar/releases.atom'
  name 'Sonar'
  homepage 'https://fbsonar.com/'

  app 'Sonar.app'
end

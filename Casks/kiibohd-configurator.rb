cask 'kiibohd-configurator' do
  version '0.3.0'
  sha256 'bacc8c5e735d1cd851aebcba6b92bc772a1332a572361a6644b59808f012d07d'

  # github.com/kiibohd/configurator was verified as official when first introduced to the cask
  url "https://github.com/kiibohd/configurator/releases/download/v#{version}/kiibohd-configurator-#{version}-mac.dmg"
  name 'The Kiibohd Configurator'
  homepage 'http://kiibohd.com/'

  app 'Kiibohd Configurator.app'
end

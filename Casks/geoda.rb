cask 'geoda' do
  version '1.10.0.12'
  sha256 'ffebd2577cd167f262e40cc8c6475de005914ba236b127d9048bf3a0423b476e'

  # s3-us-west-2.amazonaws.com/geodasoftware was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/geodasoftware/GeoDa1.10-Installer.dmg'
  name 'GeoDa'
  homepage 'https://geodacenter.github.io/'

  app 'GeoDa.app'
end

cask 'geoda' do
  version '1.10.0.12'
  sha256 'ffebd2577cd167f262e40cc8c6475de005914ba236b127d9048bf3a0423b476e'

  # s3-us-west-2.amazonaws.com/geodasoftware was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/geodasoftware/GeoDa#{version.major_minor}-Installer.dmg"
  appcast 'https://github.com/GeoDaCenter/geoda/releases.atom',
          checkpoint: '16850f39be7bf3f3fde047d1806db42dec822ec294ef61283d4b2123d09c965e'
  name 'GeoDa'
  homepage 'https://geodacenter.github.io/'

  app 'GeoDa.app'

  zap delete: '~/Library/Saved Application State/edu.asu.geodacenter.GeoDa.savedState'
end

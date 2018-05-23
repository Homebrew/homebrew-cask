cask 'geoda' do
  version '1.12.1.129'
  sha256 '9cb343b41ba7d980cf3eda4363685457501c023f77b8f15a2c95acc8694a437b'

  # s3-us-west-2.amazonaws.com/geodasoftware was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/geodasoftware/GeoDa#{version}-Installer.dmg"
  appcast 'https://github.com/GeoDaCenter/geoda/releases.atom',
          checkpoint: '916068e927ce2ee1d6b83840cd2f8a5a6804e65ff60ffe720d3fadbb9a7e7c1d'
  name 'GeoDa'
  homepage 'https://geodacenter.github.io/'

  app 'GeoDa.app'

  zap trash: '~/Library/Saved Application State/edu.asu.geodacenter.GeoDa.savedState'
end

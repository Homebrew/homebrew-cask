cask 'geoda' do
  version '1.12.1.59'
  sha256 'f9c96644b11f3aaa5aa12f4cfbeacc51fa01a29404d427d3ae1d9355dfe6f390'

  # s3-us-west-2.amazonaws.com/geodasoftware was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/geodasoftware/GeoDa#{version}-Installer.dmg"
  appcast 'https://github.com/GeoDaCenter/geoda/releases.atom',
          checkpoint: '1b95843042e8f0197d607653065be7f2393f231cac42579f9c1175f3c9b78ce8'
  name 'GeoDa'
  homepage 'https://geodacenter.github.io/'

  app 'GeoDa.app'

  zap trash: '~/Library/Saved Application State/edu.asu.geodacenter.GeoDa.savedState'
end

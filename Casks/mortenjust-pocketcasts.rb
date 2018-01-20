cask 'mortenjust-pocketcasts' do
  version '1.30'
  sha256 '9fee8fec0b5c5c3205a24c6b127064077dd6792ddf5d811b4df2dc84a34020da'

  url "https://github.com/mortenjust/PocketCastsOSX/releases/download/#{version}/PocketCasts.zip"
  appcast 'https://github.com/mortenjust/PocketCastsOSX/releases.atom',
          checkpoint: '671af329c2c010938ca567636af9fd5e9fdd83ab9dcab3b46be9792524e6dfbf'
  name 'Pocket Casts for Mac'
  homepage 'https://github.com/mortenjust/PocketCastsOSX'

  app 'PocketCasts.app'
end

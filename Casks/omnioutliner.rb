cask 'omnioutliner' do
  version '5.3'
  sha256 '14109560270bdc8bf7dec9f511896e67549864799b4851d85ee6b587ed56ab39'

  url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniOutliner-#{version}.dmg"
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniOutliner#{version.major}",
          checkpoint: '31f197afde53bbfd9107cb329facd026fefacb23af55a0a8232974936e8139c3'
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  depends_on macos: '>= :sierra'

  app 'OmniOutliner.app'
end

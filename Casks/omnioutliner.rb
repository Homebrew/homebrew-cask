cask 'omnioutliner' do
  version '5.3'
  sha256 '14109560270bdc8bf7dec9f511896e67549864799b4851d85ee6b587ed56ab39'

  url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniOutliner-#{version}.dmg"
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniOutliner#{version.major}",
          checkpoint: 'e90144e5478e8bf259933e9ded9db14a26d0332cb8925c4a2f9fd7770ae1cb1e'
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  app 'OmniOutliner.app'
end

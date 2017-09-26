cask 'omnioutliner' do
  version '5.1.2'
  sha256 'dad422b24ef079fda6dddc8f67ce661ac4649330ec62188869d7e529a5915c6e'

  url "https://downloads.omnigroup.com/software/MacOSX/10.11/OmniOutliner-#{version}.dmg"
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniOutliner#{version.major}",
          checkpoint: 'ddef8a1b4610bb0b23f5df5ff9468e74b080e4afe3d548602f494da7d398edac'
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  app 'OmniOutliner.app'
end

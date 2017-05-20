cask 'omnioutliner' do
  version '5.0.4'
  sha256 '1cc528b984b98eb2a17d2c10d943d0941b6834008d304002c0ecf9c3c1e36de3'

  url "https://downloads.omnigroup.com/software/MacOSX/10.11/OmniOutliner-#{version}.dmg"
  appcast "https://update.omnigroup.com/appcast/com.omnigroup.OmniOutliner#{version.major}",
          checkpoint: 'a2b591b031821d53be2d40ca50b1dd23fcb3076cd3a2efd1dad8928969593498'
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  app 'OmniOutliner.app'
end

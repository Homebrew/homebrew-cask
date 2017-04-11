cask 'omnioutliner' do
  version '5.0.2'
  sha256 'be66619497a8c31f21ea790c24a53e41b9968957740d9f1c66ad774c57d71779'

  url "https://downloads.omnigroup.com/software/MacOSX/10.11/OmniOutliner-#{version}.dmg"
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'

  app 'OmniOutliner.app'
end

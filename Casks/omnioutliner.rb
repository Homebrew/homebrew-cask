cask 'omnioutliner' do
  version '4.5.1'
  sha256 '8a8652204ae63768d5189bd3c5bea76a7b2b11969cbef6ca544ea4ae193416a9'

  url "http://downloads.omnigroup.com/software/MacOSX/10.10/OmniOutliner-#{version}.dmg"
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'
  license :commercial

  app 'OmniOutliner.app'
end

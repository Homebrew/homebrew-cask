cask 'omnioutliner' do
  version '4.5.3'
  sha256 'df2db6c5e79c28978a2471d68585b41219d4aa12ea142e66e0d67b62001c8da7'

  url "http://downloads.omnigroup.com/software/MacOSX/10.10/OmniOutliner-#{version}.dmg"
  name 'OmniOutliner'
  homepage 'https://www.omnigroup.com/omnioutliner/'
  license :commercial

  app 'OmniOutliner.app'
end

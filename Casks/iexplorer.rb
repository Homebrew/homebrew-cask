cask 'iexplorer' do
  version '4.1.1'
  sha256 'd82acd278f7f5aa067f848754362f801d0850a1d221ace18c6f5b602cf844b67'

  url "https://assets.macroplant.com/downloads/iExplorer-#{version}.dmg"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end

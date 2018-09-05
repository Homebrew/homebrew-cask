cask 'iexplorer' do
  version '4.2.2'
  sha256 'c95d14c02107ae1d3e5ed633d649841759dd2905d9159246d116f2f38af21a16'

  url "https://assets.macroplant.com/downloads/iExplorer-#{version}.dmg"
  name 'iExplorer'
  homepage 'https://macroplant.com/iexplorer'

  depends_on macos: '>= :mavericks'

  app 'iExplorer.app'
end

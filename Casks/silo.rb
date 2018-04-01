cask 'silo' do
  version '2.3.1'
  sha256 'd06603810d3c9c3d78f6607a3e2466bb8fd6aa67727004ef4889cfa3b904704d'

  url "https://nevercenter.com/download/Install_Silo_#{version.dots_to_underscores}_mac.zip"
  name 'Silo'
  homepage 'https://nevercenter.com/silo/'

  app "Silo #{version.major}.app"
end

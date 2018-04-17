cask 'houdahgeo' do
  version '5.1.10'
  sha256 '27814d3dbf69eedeac7b7d53acf37af55d03d1599087febfc14d28fdf7cad130'

  url "https://www.houdah.com/houdahGeo/download_assets/HoudahGeo#{version}.zip"
  name 'HoudahGeo'
  homepage 'https://www.houdah.com/houdahGeo/'

  depends_on macos: '>= :mountain_lion'

  app 'HoudahGeo.app'
end

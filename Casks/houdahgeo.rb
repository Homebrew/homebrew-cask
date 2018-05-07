cask 'houdahgeo' do
  version '5.2.1'
  sha256 'df70d5aa0e8f454ee5767b7d125e2c6d9ad7e69ad132c70ee60dbed200ec9643'

  url "https://www.houdah.com/houdahGeo/download_assets/HoudahGeo#{version}.zip"
  name 'HoudahGeo'
  homepage 'https://www.houdah.com/houdahGeo/'

  depends_on macos: '>= :mountain_lion'

  app 'HoudahGeo.app'
end

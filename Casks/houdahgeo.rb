cask 'houdahgeo' do
  version '5.2.3'
  sha256 '4198474d6b0f7c7ea76f9da44a6b2e5757d76bfba102ff6acc9e1153c8528d63'

  url "https://www.houdah.com/houdahGeo/download_assets/HoudahGeo#{version}.zip"
  appcast 'https://www.houdah.com/houdahGeo/updates/cast5.xml'
  name 'HoudahGeo'
  homepage 'https://www.houdah.com/houdahGeo/'

  app 'HoudahGeo.app'
end

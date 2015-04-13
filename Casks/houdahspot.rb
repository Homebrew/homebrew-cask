cask :v1 => 'houdahspot' do
  version :latest
  sha256 :no_check

  url 'http://www.houdah.com/houdahSpot/download_assets/HoudahSpot_latest.zip'
  appcast 'http://www.houdah.com/houdahSpot/updates/cast4.xml'
  name 'HoudahSpot'
  homepage 'http://www.houdah.com/houdahSpot/'
  license :commercial

  app 'HoudahSpot.app'

  postflight do
    suppress_move_to_applications
  end
end

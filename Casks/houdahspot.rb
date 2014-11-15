cask :v1 => 'houdahspot' do
  version :latest
  sha256 :no_check

  url 'http://www.houdah.com/houdahSpot/download_assets/HoudahSpot_latest.zip'
  appcast 'http://www.houdah.com/houdahSpot/updates/profileInfo3.php'
  homepage 'http://www.houdah.com/houdahSpot/'
  license :unknown

  app 'HoudahSpot.app'

  postflight do
    suppress_move_to_applications
  end
end

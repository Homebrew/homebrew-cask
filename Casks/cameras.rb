cask :v1 => 'cameras' do
  version :latest
  sha256 :no_check

  url "http://www.flexibits.com/cameras/downloads/Cameras.dmg"
  name 'Cameras'
  # Flexibits no longer has a homepage for Cameras
  homepage 'http://www.macupdate.com/app/mac/31606/cameras'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  prefpane 'Cameras.prefPane'
end

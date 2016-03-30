cask 'plycounter' do
  version :latest
  sha256 :no_check

  url 'https://www.plycount.com/plycounter/downloads/PlyCounter.dmg'
  name 'PlyCounter'
  homepage 'http://www.plycount.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PlyCounter.app'
end

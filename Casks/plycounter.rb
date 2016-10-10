cask 'plycounter' do
  version :latest
  sha256 :no_check

  url 'https://www.plycount.com/plycounter/downloads/PlyCounter.dmg'
  name 'PlyCounter'
  homepage 'https://www.plycount.com/'

  app 'PlyCounter.app'
end

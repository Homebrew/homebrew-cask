cask :v1 => 'plycounter' do
  version :latest
  sha256 :no_check

  url 'https://www.plycount.com/plycounter/downloads/PlyCounter.dmg'
  homepage 'http://www.plycount.com'
  license :unknown    # todo: improve this machine-generated value

  app 'PlyCounter.app'
end

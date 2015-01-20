cask :v1 => 'pongsaver' do
  version :latest
  sha256 :no_check

  url 'http://rogueamoeba.com/freebies/download/PongSaver.zip'
  name 'PongSaver'
  homepage 'http://rogueamoeba.com/freebies/'
  license :gratis

  screen_saver 'PongSaver.saver'
end

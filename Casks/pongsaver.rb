cask :v1 => 'pongsaver' do
  version :latest
  sha256 :no_check

  url 'https://rogueamoeba.com/freebies/download/PongSaver.zip'
  name 'PongSaver'
  homepage 'https://rogueamoeba.com/freebies/'
  license :gratis

  screen_saver 'PongSaver.saver'
end

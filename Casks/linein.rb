cask :v1 => 'linein' do
  version :latest
  sha256 :no_check

  url 'https://www.rogueamoeba.com/freebies/download/LineIn.zip'
  homepage 'http://www.rogueamoeba.com/freebies/'
  license :unknown    # todo: improve this machine-generated value

  app 'LineIn.app'
end

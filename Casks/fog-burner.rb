cask :v1 => 'fog-burner' do
  version :latest
  sha256 :no_check

  url 'http://fogburner.tofumatt.com/FogBurner.zip'
  homepage 'http://fogburner.tofumatt.com/'
  license :oss

  app 'Fog Burner.app'
end

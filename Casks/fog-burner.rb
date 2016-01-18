cask 'fog-burner' do
  version :latest
  sha256 :no_check

  url 'http://fogburner.tofumatt.com/FogBurner.zip'
  name 'Fog Burner'
  homepage 'http://fogburner.tofumatt.com/'
  license :oss

  depends_on macos: '>= 10.9'

  app 'Fog Burner.app'
end

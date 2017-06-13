cask 'fog-burner' do
  version :latest
  sha256 :no_check

  url 'http://fogburner.tofumatt.com/FogBurner.zip'
  name 'Fog Burner'
  homepage 'http://fogburner.tofumatt.com/'

  depends_on macos: '>= :mavericks'

  app 'Fog Burner.app'
end

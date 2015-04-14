cask :v1 => 'festify' do
  version :latest
  sha256 :no_check

  url 'http://getfestify.com/downloads/mac/Festify.zip'
  name 'Festify'
  homepage 'http://getfestify.com/'
  license :gratis

  app 'Festify.app'
end

cask :v1 => 'helium-browser' do
  version '1.6'
  sha256 '5a019169d9002198212fcac12ff325501a1c0939ef056e374c01dba934899115'

  url 'https://github.com/JadenGeller/Helium/releases/download/v1.6/Helium.app.zip'
  name 'Helium'
  homepage 'http://heliumfloats.com'
  license :mit

  app 'Helium.app'
end

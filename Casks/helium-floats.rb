cask :v1 => 'helium-floats' do
  version '1.6'
  sha256 '5a019169d9002198212fcac12ff325501a1c0939ef056e374c01dba934899115'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/JadenGeller/Helium/releases/download/v#{version}/Helium.app.zip"
  name 'Helium'
  homepage 'http://heliumfloats.com/'
  license :mit

  app 'Helium.app'
end

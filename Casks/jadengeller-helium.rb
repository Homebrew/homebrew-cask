cask :v1 => 'jadengeller-helium' do
  version '1.6'
  sha256 '5a019169d9002198212fcac12ff325501a1c0939ef056e374c01dba934899115'

  url "https://github.com/JadenGeller/Helium/releases/download/v#{version}/Helium.app.zip"
  appcast 'https://github.com/JadenGeller/Helium/releases.atom'
  name 'Helium'
  homepage 'https://jadengeller.github.io/Helium/'
  license :mit

  app 'Helium.app'
end

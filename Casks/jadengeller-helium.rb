cask :v1 => 'jadengeller-helium' do
  version '1.8'
  sha256 '62ba5942754ba44bb97af463e8c39d4cf151125ed4497856b8d23b2f4bdc4bbb'

  url "https://github.com/JadenGeller/Helium/releases/download/v#{version}/Helium.app.zip"
  appcast 'https://github.com/JadenGeller/Helium/releases.atom'
  name 'Helium'
  homepage 'https://jadengeller.github.io/Helium/'
  license :mit

  app 'Helium.app'
end

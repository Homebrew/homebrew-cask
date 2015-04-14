cask :v1 => 'jadengeller-helium' do
  version '1.5.1'
  sha256 '3be70bd4a20b252ecd1e633374145cfab36cc16c20088670a8801cd7e8e004b6'

  url "https://github.com/JadenGeller/Helium/releases/download/v#{version}/Helium.app.zip"
  appcast 'https://github.com/JadenGeller/Helium/releases.atom'
  name 'Helium'
  homepage 'http://jadengeller.github.io/Helium/'
  license :mit

  app 'Helium.app'
end

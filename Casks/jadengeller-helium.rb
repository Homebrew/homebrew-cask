cask :v1 => 'jadengeller-helium' do
  version '1.7'
  sha256 'bc638f8a3be85e4f497a6b261c0798d20be531e12e4b876755072a39d5cb6f01'

  url "https://github.com/JadenGeller/Helium/releases/download/v#{version}/Helium.app.zip"
  appcast 'https://github.com/JadenGeller/Helium/releases.atom'
  name 'Helium'
  homepage 'https://jadengeller.github.io/Helium/'
  license :mit

  app 'Helium.app'
end

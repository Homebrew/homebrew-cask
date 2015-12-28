cask 'jadengeller-helium' do
  version '1.9'
  sha256 '32bede939e1dcbbfe6ea879888456fbff30f1db2c764478fc7ba08d52e2f69fb'

  url "https://github.com/JadenGeller/Helium/releases/download/#{version}/Helium.app.zip"
  appcast 'https://github.com/JadenGeller/Helium/releases.atom',
          :sha256 => '875fb1cb7c6e18a330338c90a6cbabda82896e1e3699e2b8713c36fa073aa075'
  name 'Helium'
  homepage 'https://jadengeller.github.io/Helium/'
  license :mit

  app 'Helium.app'
end

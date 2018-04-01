cask 'jadengeller-helium' do
  version '1.9'
  sha256 '32bede939e1dcbbfe6ea879888456fbff30f1db2c764478fc7ba08d52e2f69fb'

  # github.com/JadenGeller/Helium was verified as official when first introduced to the cask
  url "https://github.com/JadenGeller/Helium/releases/download/#{version}/Helium.app.zip"
  appcast 'https://github.com/JadenGeller/Helium/releases.atom',
          checkpoint: 'b2b11db11f6092bbd99e62038730c98ccd4565040187890f40042d8a3485fbd7'
  name 'Helium'
  homepage 'http://heliumfloats.com/'

  app 'Helium.app'
end

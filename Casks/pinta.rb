cask 'pinta' do
  version '1.6'
  sha256 '8d9f04397bf279166e7c23cd6686342fb6b1a7e6d70546eefa23de73c4e251bf'

  # github.com/PintaProject/Pinta was verified as official when first introduced to the cask
  url "https://github.com/PintaProject/Pinta/releases/download/#{version}/Pinta.app.zip"
  appcast 'https://github.com/PintaProject/Pinta/releases.atom',
          checkpoint: 'd343ef21b0681259d7a8df250d61abf187a250cd34f54717c1d6130ec5767c28'
  name 'Pinta'
  homepage 'https://pinta-project.com/'

  depends_on cask: 'mono-mdk'

  app 'Pinta.app'
end

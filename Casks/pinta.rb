cask 'pinta' do
  version '1.6'
  sha256 '8d9f04397bf279166e7c23cd6686342fb6b1a7e6d70546eefa23de73c4e251bf'

  # github.com/PintaProject/Pinta was verified as official when first introduced to the cask
  url "https://github.com/PintaProject/Pinta/releases/download/#{version}/Pinta.app.zip"
  appcast 'https://github.com/PintaProject/Pinta/releases.atom',
          checkpoint: '3a9a1d24957700d63abd785fa13a694d0113dbb0fc777d7cd1808170d8f13a53'
  name 'Pinta'
  homepage 'https://pinta-project.com/pintaproject/pinta/'

  depends_on cask: 'mono-mdk'

  app 'Pinta.app'
end

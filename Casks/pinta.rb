cask :v1 => 'pinta' do
  version '1.6'
  sha256 '8d9f04397bf279166e7c23cd6686342fb6b1a7e6d70546eefa23de73c4e251bf'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/PintaProject/Pinta/releases/download/#{version}/Pinta.app.zip"
  appcast 'https://github.com/PintaProject/Pinta/releases.atom'
  name 'Pinta'
  homepage 'http://pinta-project.com/'
  license :mit

  app 'Pinta.app'

  depends_on :cask => 'mono-mdk'
end

cask :v1 => 'pinta' do
  version '1.4'
  sha256 'ebe9e8c271e5c445144ecbbce62d0e5bb20a27b75f34b90bf1a898e1cc452edf'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/downloads/PintaProject/Pinta/pinta-#{version}.app.zip"
  name 'Pinta'
  homepage 'http://pinta-project.com/'
  license :oss

  app 'Pinta.app'
end

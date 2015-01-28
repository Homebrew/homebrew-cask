cask :v1 => 'pinta' do
  version '1.5'
  sha256 'd23093ce67c6aac77c3380aff63963ca615fcf9ef85ee1683655c599070b766e'

  # github.com is the official download host per the vendor homepage
  url "https://github.com//PintaProject/Pinta/releases/download/#{version}/Pinta.app.zip"
  name 'Pinta'
  homepage 'http://pinta-project.com/'
  license :oss

  app 'Pinta.app'
end

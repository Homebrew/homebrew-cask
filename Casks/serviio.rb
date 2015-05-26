cask :v1 => 'serviio' do
  version '1.5.1'
  sha256 '65964602b8ea1ddc29dfefa1452610b84884caa996c02342cc9ba35d5a34d0f4'

  url "http://download.serviio.org/releases/serviio-#{version}-osx.tar.gz"
  name 'Serviio'
  homepage 'http://serviio.org/'
  license :commercial

  pkg "Serviio-#{version}.pkg"
end

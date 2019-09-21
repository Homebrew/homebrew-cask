cask 'maltego' do
  version '4.2.7.12570'
  sha256 '66b18e7bac3f039d8e13080f1dce63f1ca2d530e9a89a7f23fe5ec91aa918036'

  url "https://www.paterva.com/malv#{version.major_minor_patch.no_dots}/Maltego.v#{version}.dmg"
  name 'Maltego'
  homepage 'https://www.paterva.com/web7/buy/maltego-clients.php'

  app 'Maltego.app'

  zap trash: '~/Library/Application Support/maltego'

  caveats do
    depends_on_java '8'
  end
end

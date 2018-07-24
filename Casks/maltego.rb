cask 'maltego' do
  version '4.1.12.11480'
  sha256 '0bc2407ce5635a32166d77b22db29d4b1adf8be47fa71a4833b5df44093de190'

  url "https://www.paterva.com/malv#{version.major_minor.no_dots}/Maltego.v#{version}.dmg"
  name 'Maltego'
  homepage 'https://www.paterva.com/web7/buy/maltego-clients.php'

  app 'Maltego.app'

  zap trash: '~/Library/Application Support/maltego'

  caveats do
    depends_on_java '8'
  end
end

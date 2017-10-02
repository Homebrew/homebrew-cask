cask 'maltego' do
  version '4.1.0.10552'
  sha256 'f7e869141ea4ccabd339e48a14fe74a6d34f5e8d408a93e891aba3affa30cb49'

  url "https://www.paterva.com/malv#{version.major_minor.no_dots}/maltego_v#{version}.dmg"
  name 'Maltego'
  homepage 'https://www.paterva.com/web7/buy/maltego-clients.php'

  app 'Maltego.app'

  zap trash: '~/Library/Application Support/maltego'

  caveats do
    depends_on_java('8')
  end
end

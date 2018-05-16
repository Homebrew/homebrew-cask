cask 'maltego' do
  version '4.1.6.11045'
  sha256 '3dbc9a7dd27bae0fe4b47436d6040df2e301c7043e4dcba9ff7510da05be0265'

  url "https://www.paterva.com/malv#{version.major_minor.no_dots}/maltego_v#{version}.dmg"
  name 'Maltego'
  homepage 'https://www.paterva.com/web7/buy/maltego-clients.php'

  app 'Maltego.app'

  zap trash: '~/Library/Application Support/maltego'

  caveats do
    depends_on_java '8'
  end
end

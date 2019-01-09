cask 'maltego' do
  version '4.1.13.11516'
  sha256 '84e4a60a488e676928ffabef25f7de94a57ad7252f8a88e29321cf3b65e26910'

  url "https://www.paterva.com/malv#{version.major_minor.no_dots}/Maltego.v#{version}.dmg"
  name 'Maltego'
  homepage 'https://www.paterva.com/web7/buy/maltego-clients.php'

  app 'Maltego.app'

  zap trash: '~/Library/Application Support/maltego'

  caveats do
    depends_on_java '8'
  end
end

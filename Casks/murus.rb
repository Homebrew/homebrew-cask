cask 'murus' do
  version '1.4.7'
  sha256 '1e21e9b7cfe4a7c485b9120affe6579c1c7c4c34aa8b616a83e5a3bce48605ae'

  url "http://www.murusfirewall.com/downloads/murus-#{version}.zip"
  name 'Murus Firewall'
  homepage 'https://www.murusfirewall.com/'

  depends_on macos: '>= :mavericks'

  app 'Murus.app'
end

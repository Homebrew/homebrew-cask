cask 'commander-one' do
  version '2.2'
  sha256 'e8ee5cbea733c5aa3951a04d9c214c4aac5bde2f19b8d2a8ec97145e5991b5a5'

  url 'https://cdn.eltima.com/download/commander.dmg'
  appcast 'https://cdn.eltima.com/download/commander-update/settings.xml'
  name 'Commander One'
  homepage 'https://mac.eltima.com/file-manager.html'

  depends_on macos: '>= :yosemite'

  app 'Commander One.app'
end

cask 'pock' do
  version '0.7.2'
  sha256 '6b1e8047370d719407711c781c379ddf7e9eef572ed08407be0873ce4fe45476'

  url "https://pock.dev/download.php?file=pock_#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/pigigaldi/Pock/releases.atom'
  name 'Pock'
  homepage 'https://pock.dev/'

  depends_on macos: '>= :sierra'

  app 'Pock.app'
end

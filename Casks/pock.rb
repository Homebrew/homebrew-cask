cask 'pock' do
  version '0.4.6'
  sha256 '1f300493668c6b8948d68e92a44d25658721cc8a9a581ccbc75b5f78228f35a3'

  url "https://pock.pigigaldi.com/download.php?file=pock_#{version.dots_to_underscores}_eket.zip"
  appcast 'https://github.com/pigigaldi/Pock/releases.atom'
  name 'Pock'
  homepage 'https://pock.pigigaldi.com/'

  depends_on macos: '>= :sierra'

  app 'Pock.app'
end

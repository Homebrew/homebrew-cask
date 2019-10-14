cask 'pock' do
  version '0.6.2'
  sha256 'bfc2ffd38860a9f3f5c05487a636894507def118572875d58e481f041429f9d7'

  url "https://pock.dev/download.php?file=pock_#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/pigigaldi/Pock/releases.atom'
  name 'Pock'
  homepage 'https://pock.dev/'

  depends_on macos: '>= :sierra'

  app 'Pock.app'
end

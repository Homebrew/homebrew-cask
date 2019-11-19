cask 'pock' do
  version '0.6.3'
  sha256 '04aa9968c048ce45313b61688c3a083093d381221ff2a7cd833f9364339c943d'

  url "https://pock.dev/download.php?file=pock_#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/pigigaldi/Pock/releases.atom'
  name 'Pock'
  homepage 'https://pock.dev/'

  depends_on macos: '>= :sierra'

  app 'Pock.app'
end

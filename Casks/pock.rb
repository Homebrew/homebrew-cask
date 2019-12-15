cask 'pock' do
  version '0.7.1'
  sha256 '273af80d2bde8a9d9687dad42da018a639b65345e36cefa06120191442f92daa'

  url "https://pock.dev/download.php?file=pock_#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/pigigaldi/Pock/releases.atom'
  name 'Pock'
  homepage 'https://pock.dev/'

  depends_on macos: '>= :sierra'

  app 'Pock.app'
end

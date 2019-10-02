cask 'pock' do
  version '0.6.1'
  sha256 '2050a4f9ef39ef2fd5bf912ae4f1bb0a2737f685b76a056249cca5e3ed17bbff'

  url "https://pock.dev/download.php?file=pock_#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/pigigaldi/Pock/releases.atom'
  name 'Pock'
  homepage 'https://pock.dev/'

  depends_on macos: '>= :sierra'

  app 'Pock.app'
end

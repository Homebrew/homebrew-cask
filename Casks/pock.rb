cask 'pock' do
  version '0.7'
  sha256 '211037eaa903c20677e6560e74434276b02c0214d4f31b0d834ff47dc66f12b3'

  url "https://pock.dev/download.php?file=pock_#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/pigigaldi/Pock/releases.atom'
  name 'Pock'
  homepage 'https://pock.dev/'

  depends_on macos: '>= :sierra'

  app 'Pock.app'
end

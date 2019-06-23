cask 'pock' do
  version '0.5.1'
  sha256 '9694fc0952c7c04f40f6408d5d155abff6f584b4b0735979587f2d7ece3e2b83'

  url "https://pock.dev/download.php?file=pock_#{version.dots_to_underscores}_lack.zip"
  appcast 'https://github.com/pigigaldi/Pock/releases.atom'
  name 'Pock'
  homepage 'https://pock.dev/'

  depends_on macos: '>= :sierra'

  app 'Pock.app'
end

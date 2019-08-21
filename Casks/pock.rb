cask 'pock' do
  version '0.6'
  sha256 '94040d127d3d4476d541c40eb96ba9cb4ccaa5bb1b9e7a36c8da5779ecda9b8d'

  url "https://pock.dev/download.php?file=pock_#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/pigigaldi/Pock/releases.atom'
  name 'Pock'
  homepage 'https://pock.dev/'

  depends_on macos: '>= :sierra'

  app 'Pock.app'
end

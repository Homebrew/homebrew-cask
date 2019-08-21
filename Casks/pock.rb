cask 'pock' do
  version '0.6'
  sha256 'bd658a234cb87ac7cb273884b694e6459ec1f8e4a1cd527407f34ed23fa59e2d'

  url "https://pock.dev/download.php?file=pock_#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/pigigaldi/Pock/releases.atom'
  name 'Pock'
  homepage 'https://pock.dev/'

  depends_on macos: '>= :sierra'

  app 'Pock.app'
end

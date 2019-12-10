cask 'kactus' do
  version '0.3.25'
  sha256 'f2e9fbf3f3b59e21832f2eeba35c379b173b1ae33cec84d6e02c7653ad2e356b'

  # github.com/kactus-io/kactus was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  appcast 'https://github.com/kactus-io/kactus/releases.atom'
  name 'Kactus'
  homepage 'https://kactus.io/'

  depends_on cask: 'sketch'

  app 'Kactus.app'
end

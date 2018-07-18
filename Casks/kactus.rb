cask 'kactus' do
  version '0.3.12'
  sha256 'da53c899364c28fa1363c0fd5f5e3d2803c3507301cd12a8b8068ecfa630c8bf'

  # github.com/kactus-io/kactus was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus.zip"
  appcast 'https://github.com/kactus-io/kactus/releases.atom'
  name 'Kactus'
  homepage 'https://kactus.io/'

  depends_on cask: 'sketch'

  app 'Kactus.app'
end

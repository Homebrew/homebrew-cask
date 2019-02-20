cask 'kactus' do
  version '0.3.19'
  sha256 '514e7c64ea5185414a6d8c8b3cf92d2bf74a358ba0090b1080774241e88b0d50'

  # github.com/kactus-io/kactus was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  appcast 'https://github.com/kactus-io/kactus/releases.atom'
  name 'Kactus'
  homepage 'https://kactus.io/'

  depends_on cask: 'sketch'

  app 'Kactus.app'
end

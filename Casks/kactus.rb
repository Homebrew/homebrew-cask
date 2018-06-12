cask 'kactus' do
  version '0.3.9'
  sha256 '9455f20c44cb008fb449cb9663e9a6c299d3ea6f7419f464d5c3b4bc6c0565d8'

  # github.com/kactus-io/kactus was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  appcast 'https://github.com/kactus-io/kactus/releases.atom'
  name 'Kactus'
  homepage 'https://kactus.io/'

  depends_on cask: 'sketch'

  app 'Kactus.app'
end

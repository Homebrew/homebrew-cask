cask 'kactus' do
  version '0.3.22'
  sha256 'f4bc4c4678fbb2bc0016848f4fa04b5bb3030ac94c3b834b506dfac3e4f12c48'

  # github.com/kactus-io/kactus was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  appcast 'https://github.com/kactus-io/kactus/releases.atom'
  name 'Kactus'
  homepage 'https://kactus.io/'

  depends_on cask: 'sketch'

  app 'Kactus.app'
end

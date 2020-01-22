cask 'kactus' do
  version '0.3.26'
  sha256 'c1df3a992629d7766d9d9cf906a4d351a08ff4f49b7a6929c331bc4f07bd9bdd'

  # github.com/kactus-io/kactus was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  appcast 'https://github.com/kactus-io/kactus/releases.atom'
  name 'Kactus'
  homepage 'https://kactus.io/'

  depends_on cask: 'sketch'

  app 'Kactus.app'
end

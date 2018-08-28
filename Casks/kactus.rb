cask 'kactus' do
  version '0.3.13'
  sha256 'b765c066f0e6073a7a0605fdedf48e5df1a358b988057e929a7fac366ce29eb0'

  # github.com/kactus-io/kactus was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  appcast 'https://github.com/kactus-io/kactus/releases.atom'
  name 'Kactus'
  homepage 'https://kactus.io/'

  depends_on cask: 'sketch'

  app 'Kactus.app'
end

cask 'kactus' do
  version '0.3.5'
  sha256 '20b118150159fb564bee317964ff5432dc65e50271b71b2645fa95e886740d37'

  # github.com/kactus-io/kactus was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  appcast 'https://github.com/kactus-io/kactus/releases.atom',
          checkpoint: '2228f4175e5b195b0ab95037e2b885bc916e11c498f33fb8eacbe333c05b72ae'
  name 'Kactus'
  homepage 'https://kactus.io/'

  depends_on cask: 'sketch'

  app 'Kactus.app'
end

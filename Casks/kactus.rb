cask 'kactus' do
  version '0.3.10'
  sha256 'bd92ad9e1997a3ff5c66a149321ba0a37cadbc8ee18054d3213c9f81fca17896'

  # github.com/kactus-io/kactus was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  appcast 'https://github.com/kactus-io/kactus/releases.atom'
  name 'Kactus'
  homepage 'https://kactus.io/'

  depends_on cask: 'sketch'

  app 'Kactus.app'
end

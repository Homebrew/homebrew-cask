cask 'kactus' do
  version '0.3.14'
  sha256 '5948453cb847eafb6e93b6ac71aa020c0e30fb49ca3bf0cc1670e293605edfc8'

  # github.com/kactus-io/kactus was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  appcast 'https://github.com/kactus-io/kactus/releases.atom'
  name 'Kactus'
  homepage 'https://kactus.io/'

  depends_on cask: 'sketch'

  app 'Kactus.app'
end

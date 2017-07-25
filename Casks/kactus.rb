cask 'kactus' do
  version '0.1.14'
  sha256 'cf5ba67e11e9a3ac7583dd5b90d1653d77149a4ec799aebaca3bdc1def12309f'

  # github.com/kactus-io was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  name 'Kactus'
  homepage 'http://kactus.io/'

  depends_on cask: 'sketch'

  app 'Kactus.app'
end

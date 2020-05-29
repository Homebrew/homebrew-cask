cask 'cryptomator' do
  version '1.5.5'
  sha256 '4b5bc0194716c4e075efde4ce2d167108bd72b682ce539791d848b6c2f491e86'

  # dl.bintray.com/cryptomator/cryptomator/ was verified as official when first introduced to the cask
  url "https://dl.bintray.com/cryptomator/cryptomator/#{version}/Cryptomator-#{version}.dmg"
  appcast 'https://github.com/cryptomator/cryptomator/releases.atom'
  name 'Cryptomator'
  homepage 'https://cryptomator.org/'

  depends_on macos: '>= :yosemite'

  app 'Cryptomator.app'

  zap trash: '~/Library/Application Support/Cryptomator'
end

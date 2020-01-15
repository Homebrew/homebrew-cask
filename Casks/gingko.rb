cask 'gingko' do
  version '2.4.7'
  sha256 '3b9fe3920d96e30c677fd09a7482cb9666a269f8b98d893c268d50c81dfa2855'

  # github.com/gingko/client was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/Gingko-#{version}-mac.zip"
  appcast 'https://github.com/gingko/client/releases.atom'
  name 'Gingko'
  homepage 'https://gingko.io/'

  app 'Gingko.app'

  zap trash: '~/Library/Application Support/Gingko'
end

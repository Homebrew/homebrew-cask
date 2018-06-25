cask 'buttercup' do
  version '1.8.0'
  sha256 '237cd2c2108ae624809fc18bd80a31e15beb2eca2d23a0919e8ce2b3677e368d'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/buttercup-desktop-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end

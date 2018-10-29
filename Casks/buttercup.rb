cask 'buttercup' do
  version '1.10.3'
  sha256 '6df009e35d248a973d0b76b3fff236cb7c77bf8520a79b1fbcbbb68a276e8112'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end

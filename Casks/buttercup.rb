cask 'buttercup' do
  version '1.7.1'
  sha256 'e9ae179b2afaabd2d4fce4d2bbf87c8557e58f855735cba006a31c78fdeb5ef5'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/buttercup-desktop-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end

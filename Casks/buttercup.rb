cask 'buttercup' do
  version '0.22.1'
  sha256 'c555b334ca8a8f02ecf7f142ec5b026cd8e81e9bc948571714ebac0de1a5f345'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/buttercup-desktop-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: '062d5cab08dc746270be1d02ab8dd737923a68041f25c61f03b2d1dcf7cb4ea2'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end

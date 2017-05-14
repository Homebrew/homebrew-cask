cask 'buttercup' do
  version '0.14.2'
  sha256 '6c8d1d5da41d30c48c06438e5a7f6ac2fce4c0bc65735302a8c55df985a48c63'

  # github.com/buttercup/buttercup was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup/releases.atom',
          checkpoint: 'a7cfe2c582aff349d1fb84c522a88adc4d452a15b44cb8607391e76a4a9fd170'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end

cask 'buttercup' do
  version '0.24.3'
  sha256 '49b5d8981980f62e1b90021fdf83fa8392e5011c5ad57e899dcd64d8d6380d34'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/buttercup-desktop-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: '62f16969339f340441701dc3312c08792b76232911f2f1074fe79e213b69f688'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end

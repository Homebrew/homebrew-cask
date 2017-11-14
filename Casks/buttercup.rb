cask 'buttercup' do
  version '0.22.3'
  sha256 'ed3aa1bef79892dad63ee4c048862451e7fd59f51d47bde039283f3c566660a5'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/buttercup-desktop-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: '1049a07a07eb7e38b6b8cd4ffa47b1809334460fa6098bb02a558a64769a21d4'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end

cask 'buttercup' do
  version '1.12.2'
  sha256 '8faa0b2d9adb16265918884ba4806a1c4601662ae954cbfdc40e08a60e904793'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end

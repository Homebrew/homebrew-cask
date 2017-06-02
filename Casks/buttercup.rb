cask 'buttercup' do
  version '0.17.0'
  sha256 'afbbe3eb80d4e8872f808b91eb9785ec8b685a1bdc17419f537db053683f5a9b'

  # github.com/buttercup/buttercup was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup/releases.atom',
          checkpoint: 'f826642604cef94caf9be98fc0c491c890b1f5227195a9c4dfbc8d5942d16012'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end

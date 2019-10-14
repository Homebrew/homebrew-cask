cask 'buttercup' do
  version '1.17.0'
  sha256 'bcb4ff0c4ecba8b79541e41b4c18474894f0059d58c98a050539fcd5854c6dab'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/Buttercup-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end

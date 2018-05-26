cask 'buttercup' do
  version '1.7.0'
  sha256 '62e27b0f1ebedef627f4cedafce1eb080b75d0dde523d3385a086dbb4b20753d'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/buttercup-desktop-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: '9e282da0f03eea06383fb10c0bb7f29d9bebfb550063ce61ad8b37c104e8ea21'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end

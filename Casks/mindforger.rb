cask 'mindforger' do
  version '1.49.0'
  sha256 '2e5b5cfd55d054fbc67039fe38c683c2b6e3e4e8e52c9f74f246162d7f2c3b46'

  # github.com/dvorka/mindforger was verified as official when first introduced to the cask
  url "https://github.com/dvorka/mindforger/releases/download/#{version.major_minor}.0/mindforger-macos10.12-#{version}.dmg"
  appcast 'https://github.com/dvorka/mindforger/releases.atom'
  name 'MindForger'
  homepage 'https://www.mindforger.com/'

  app 'mindforger.app'
end

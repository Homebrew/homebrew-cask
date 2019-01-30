cask 'mindforger' do
  version '1.48.2'
  sha256 'd412e7f71b04cb5fa6d69effae51a51553a97d54947332d525d0af1470aa2759'

  # github.com/dvorka/mindforger was verified as official when first introduced to the cask
  url "https://github.com/dvorka/mindforger/releases/download/#{version.major_minor}.0/mindforger-macos10.12-#{version}.dmg"
  appcast 'https://github.com/dvorka/mindforger/releases.atom'
  name 'MindForger'
  homepage 'https://www.mindforger.com/'

  app 'mindforger.app'
end

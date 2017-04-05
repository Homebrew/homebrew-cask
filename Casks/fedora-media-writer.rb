cask 'fedora-media-writer' do
  version '4.0.8'
  sha256 'd457232f0cac86514a8d32ae9673fcde1386f3349b98c47f84b9d6f318f00753'

  # github.com/MartinBriza/MediaWriter was verified as official when first introduced to the cask
  url "https://github.com/MartinBriza/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx-#{version}.dmg"
  appcast 'https://github.com/MartinBriza/MediaWriter/releases.atom',
          checkpoint: 'a7569ce2fa71ba8b6c7391629b4b73f0fa0dfb012effc6d5e863ec4f5a13095a'
  name 'Fedora Media Writer'
  homepage 'https://fedoraproject.org/wiki/How_to_create_and_use_Live_USB'

  app 'Fedora Media Writer.app'
end

cask 'fedora-media-writer' do
  version '4.0.8'
  sha256 '6f64f2ba333033f839981cb4435662fc299a8bdc45e895bc33ffd9753f675f62'

  # github.com/MartinBriza/MediaWriter was verified as official when first introduced to the cask
  url "https://github.com/MartinBriza/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx-#{version}.dmg"
  appcast 'https://github.com/MartinBriza/MediaWriter/releases.atom',
          checkpoint: 'a7569ce2fa71ba8b6c7391629b4b73f0fa0dfb012effc6d5e863ec4f5a13095a'
  name 'Fedora Media Writer'
  homepage 'https://fedoraproject.org/wiki/How_to_create_and_use_Live_USB'

  app 'Fedora Media Writer.app'
end

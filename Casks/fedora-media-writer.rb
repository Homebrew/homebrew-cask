cask 'fedora-media-writer' do
  version '4.1.3'
  sha256 'b3d437defb0cfbad0be50127f692b3c6592aada6fe4f5e4447514fe703e5428f'

  # github.com/MartinBriza/MediaWriter was verified as official when first introduced to the cask
  url "https://github.com/MartinBriza/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx-#{version}.dmg"
  appcast 'https://github.com/MartinBriza/MediaWriter/releases.atom'
  name 'Fedora Media Writer'
  homepage 'https://fedoraproject.org/wiki/How_to_create_and_use_Live_USB'

  app 'Fedora Media Writer.app'
end

cask 'fedora-media-writer' do
  version '4.0.8'
  sha256 '6f64f2ba333033f839981cb4435662fc299a8bdc45e895bc33ffd9753f675f62'

  # github.com/MartinBriza/MediaWriter was verified as official when first introduced to the cask
  url "https://github.com/MartinBriza/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx-#{version}.dmg"
  appcast 'https://github.com/MartinBriza/MediaWriter/releases',
          checkpoint: '6f6daea2d9b18afbbd04f81b9cd2f79fc1c90f8d7ba162e7a8c389579cac1902'
  name 'Fedora Media Writer'
  homepage 'https://fedoraproject.org/wiki/How_to_create_and_use_Live_USB'

  app 'Fedora Media Writer.app'
end

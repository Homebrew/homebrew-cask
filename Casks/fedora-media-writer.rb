cask 'fedora-media-writer' do
  version '4.1.0'
  sha256 '747e7862563cabaea9d8a9151d6be728df33e400be62a07f12f3bbc3c4f51f65'

  # github.com/MartinBriza/MediaWriter was verified as official when first introduced to the cask
  url "https://github.com/MartinBriza/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx-#{version}.dmg"
  appcast 'https://github.com/MartinBriza/MediaWriter/releases.atom',
          checkpoint: 'c4b473faa782ec2a58121900e3f48c236370f049f5580b20db119f5cb6cb988a'
  name 'Fedora Media Writer'
  homepage 'https://fedoraproject.org/wiki/How_to_create_and_use_Live_USB'

  app 'Fedora Media Writer.app'
end

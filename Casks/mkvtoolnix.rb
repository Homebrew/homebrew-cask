cask 'mkvtoolnix' do
  version '9.9.0'
  sha256 '454cb48725cd1a536052ef10c33774332999a534e2ed14b6f86f2708ad72d3ea'

  url "https://mkvtoolnix.download/macos/MKVToolNix-#{version}.dmg"
  name 'MKVToolNix'
  homepage 'https://mkvtoolnix.download'

  app "MKVToolNix-#{version}.app"
end

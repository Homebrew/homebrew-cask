cask 'plex-media-player' do
  version '2.11.0.867-f27f8d2a'
  sha256 'fcde6c9d9c50a60af7fc730dae1f6c0e385a5f19eb4568b6a9f9c30de0b306e8'

  url "https://downloads.plex.tv/plexmediaplayer/#{version}/PlexMediaPlayer-#{version}-macosx-x86_64.zip"
  appcast 'https://plex.tv/api/downloads/3.json',
          checkpoint: '0862219eb1b884b0b35c190f4136b8ffb5073b37e54625b3cfd13180a31ba7fb'
  name 'Plex Media Player'
  homepage 'https://www.plex.tv/'

  depends_on macos: '>= :yosemite'

  app 'Plex Media Player.app'
end

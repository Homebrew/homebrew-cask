cask 'plex-home-theater' do
  version '1.4.1.469-47a90f01'
  sha256 'dd2babcfd023c03117e46a5e653b60bbd0567fe25328b778e09004b11e686995'

  url "https://downloads.plex.tv/plex-home-theater/#{version}/PlexHomeTheater-#{version}-macosx-x86_64.zip"
  name 'Plex Home Theater'
  homepage 'https://plex.tv'

  app 'Plex Home Theater.app'
end

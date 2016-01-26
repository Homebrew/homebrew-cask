cask 'plex-home-theater' do
  version '1.4.1.469-47a90f01'

  if Hardware::CPU.is_32_bit?
    sha256 'bcf40c09c23104d67c45381199a19a4e7c4147fb8a11508faff34d3fd4f6560b'
    url "https://downloads.plex.tv/plex-home-theater/#{version}/PlexHomeTheater-#{version}-macosx-i386.zip"
  else
    sha256 'dd2babcfd023c03117e46a5e653b60bbd0567fe25328b778e09004b11e686995'
    url "https://downloads.plex.tv/plex-home-theater/#{version}/PlexHomeTheater-#{version}-macosx-x86_64.zip"
  end

  name 'Plex Home Theater'
  homepage 'https://plex.tv'
  license :gratis

  app 'Plex Home Theater.app'
end

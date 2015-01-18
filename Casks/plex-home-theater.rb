cask :v1 => 'plex-home-theater' do
  version '1.3.5.431-7966a4df'

  if Hardware::CPU.is_32_bit?
    sha256 'c7ee467979ae0401db98cb7e8309a1bf81380c224d5c1bf58437f792ac95a0dd'
    url "https://downloads.plex.tv/plex-home-theater/#{version}/PlexHomeTheater-#{version}-macosx-i386.zip"
  else
    sha256 '02f36aba9524563e6f67309d63f6c48e75ebaaddb5dc8dc825609f67d1701552'
    url "https://downloads.plex.tv/plex-home-theater/#{version}/PlexHomeTheater-#{version}-macosx-x86_64.zip"
  end

  homepage 'https://plex.tv'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Plex Home Theater.app'
end

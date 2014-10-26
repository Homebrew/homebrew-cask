class PlexHomeTheater < Cask
  version '1.2.2.331-2d6426d7'

  if Hardware::CPU.is_32_bit?
    sha256 'ac3a866d5227aa23b80acfef447c7a27366c11d77ecdd6d506afce013b6d986c'
    url "http://downloads.plexapp.com/plex-home-theater/#{version}/PlexHomeTheater-#{version}-macosx-i386.zip"
  else
    sha256 '7a862680a04867db422c811c3afc1285c9b133e8a00f8fbe04a58a87b9e94cb5'
    url "http://downloads.plexapp.com/plex-home-theater/#{version}/PlexHomeTheater-#{version}-macosx-x86_64.zip"
  end

  homepage 'https://plex.tv'
  license :unknown

  app 'Plex Home Theater.app'
end

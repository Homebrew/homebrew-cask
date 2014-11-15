cask :v1 => 'plex-home-theater' do
  version '1.2.3.378-0c92ed32'

  if Hardware::CPU.is_32_bit?
    sha256 '7c2fd9541104346478fd7fa1e34c609bc6494202e82dcb91533b1e3931add232'
    url "https://downloads.plex.tv/plex-home-theater/#{version}/PlexHomeTheater-#{version}-macosx-i386.zip"
  else
    sha256 '329011165014f20110c258049ab5de6c84a2957065e7dd01dfa68599ae9d4810'
    url "https://downloads.plex.tv/plex-home-theater/#{version}/PlexHomeTheater-#{version}-macosx-x86_64.zip"
  end

  homepage 'https://plex.tv'
  license :unknown

  app 'Plex Home Theater.app'
end

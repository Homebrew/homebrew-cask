cask 'plex-media-server' do
  version '0.9.16.4.1911-ee6e505'
  sha256 'c9311c50365c3564e3d95baf4d0299c899da8ac497b6c95f640bf1c1b21b1f7e'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  name 'Plex Media Server'
  homepage 'https://plex.tv/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'Plex Media Server.app'
end

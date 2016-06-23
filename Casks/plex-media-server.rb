cask 'plex-media-server' do
  version '0.9.17.3.2239-fe07491'
  sha256 '19560ff62e0f8645131cea87b59f19d503c56a25210eddd02244ef1f2484bd02'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  name 'Plex Media Server'
  homepage 'https://plex.tv/'
  license :freemium

  depends_on macos: '>= :mountain_lion'

  app 'Plex Media Server.app'
end

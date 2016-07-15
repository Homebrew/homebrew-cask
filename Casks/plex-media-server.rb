cask 'plex-media-server' do
  version '1.0.0.2261-a17e99e'
  sha256 '0f7ab9f79a145fb39158cc45e6a5919f6f47ffc9da14e3260240b701ba9e5933'

  url "https://downloads.plex.tv/plex-media-server/#{version}/PlexMediaServer-#{version}-OSX.zip"
  name 'Plex Media Server'
  homepage 'https://plex.tv/'
  license :freemium

  depends_on macos: '>= :mountain_lion'

  app 'Plex Media Server.app'
end

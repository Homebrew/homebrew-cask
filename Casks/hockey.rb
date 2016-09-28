cask 'hockey' do
  version '2.0.17,497'
  sha256 '8a09e3fefec0bc928e9eb37c1ed2beee1811543c7e89050a598bb095d8eba1f6'

  url "https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1',
          checkpoint: '512d2ed8d3adc0be98c22550b4ab593d59b1c8c865c4ac7f38e1a0eb794494d3'
  name 'HockeyApp'
  homepage 'https://hockeyapp.net/releases/mac/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'HockeyApp.app'
  binary "#{appdir}/HockeyApp.app/Contents/Resources/puck"

  postflight do
    suppress_move_to_applications
  end
end

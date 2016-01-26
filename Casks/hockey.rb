cask 'hockey' do
  version '2.0.14'
  sha256 '4cd6dc945378a520818ace687c89dd1356d5f975731a7848e37cad2e12278a31'

  url 'https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1/app_versions/396?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1',
          checkpoint: 'b27878765070c937cc053e44afa37680cf48c554506f8ddc72ec83cd4487bd9f'
  name 'HockeyApp'
  homepage 'http://hockeyapp.net/releases/mac/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'HockeyApp.app'
  binary 'HockeyApp.app/Contents/Resources/puck'

  postflight do
    suppress_move_to_applications
  end
end

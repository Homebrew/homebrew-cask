cask 'hockey' do
  version '2.0.16'
  sha256 '782b2355341251989b28021d07c28c44ac3d9c388547fc5a06b777bbd4a536d6'

  url 'https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1/app_versions/396?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1',
          checkpoint: '8802b612ed27a271b0c50c4b56c4882c6b24a9914b39d7b6058ec8b40ffc943f'
  name 'HockeyApp'
  homepage 'http://hockeyapp.net/releases/mac/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'HockeyApp.app'
  binary "#{appdir}/HockeyApp.app/Contents/Resources/puck"

  postflight do
    suppress_move_to_applications
  end
end

cask 'hockey' do
  version '2.0.17,498'
  sha256 '6968850698833f425c7ce12cd9fea6572c6ff7a0ef2bcaab10235412e7058f97'

  url "https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1',
          checkpoint: '80877307fae78dab79b06256af60f0d6e7c254e524fb98b50c6cc36ed9f3429f'
  name 'HockeyApp'
  homepage 'https://hockeyapp.net/releases/mac/'

  app 'HockeyApp.app'
  binary "#{appdir}/HockeyApp.app/Contents/Resources/puck"

  postflight do
    suppress_move_to_applications
  end
end

cask 'hockey' do
  version '2.0.16,400'
  sha256 '782b2355341251989b28021d07c28c44ac3d9c388547fc5a06b777bbd4a536d6'

  url "https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1',
          checkpoint: 'e5204578a40f3180eef087d2495e0315de59d0f03232e374da86d3dcda62f8b5'
  name 'HockeyApp'
  homepage 'https://hockeyapp.net/releases/mac/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'HockeyApp.app'
  binary "#{appdir}/HockeyApp.app/Contents/Resources/puck"

  postflight do
    suppress_move_to_applications
  end
end

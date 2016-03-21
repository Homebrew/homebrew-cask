cask 'hockey' do
  version '2.0.15'
  sha256 'f2a5f3e1b6ff047dc030e78a93572e54d6afb2901c190b1841489e1289dc22d3'

  url 'https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1/app_versions/396?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1',
          checkpoint: '924c8019247e3ab7c5c039aefa46eaff3353473ec3d3760650a39c62c6f20781'
  name 'HockeyApp'
  homepage 'http://hockeyapp.net/releases/mac/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'HockeyApp.app'
  binary 'HockeyApp.app/Contents/Resources/puck'

  postflight do
    suppress_move_to_applications
  end
end

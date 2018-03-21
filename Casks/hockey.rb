cask 'hockey' do
  version '2.0.21,507'
  sha256 '3ba93e54752891bc808a162c6426f006db07ab795123ad563bcfb403a99a935b'

  url "https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1',
          checkpoint: 'fc6e44d563a04341b074b8d8fc438058851de68f24ce7d021028554e0dbd7575'
  name 'HockeyApp'
  homepage 'https://hockeyapp.net/releases/mac/'

  app 'HockeyApp.app'
  binary "#{appdir}/HockeyApp.app/Contents/Resources/puck"
end

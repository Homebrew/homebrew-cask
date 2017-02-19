cask 'hockey' do
  version '2.0.18,501'
  sha256 'ff1ecf90b86ead33fc84d9c9957b8be53eff441663ab10916c5f11adc5aca3ee'

  url "https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1',
          checkpoint: 'c7106f8310e0d63d2b1472f5b802ad5a026be3f9196605d52c4b2b3721b46b0d'
  name 'HockeyApp'
  homepage 'https://hockeyapp.net/releases/mac/'

  app 'HockeyApp.app'
  binary "#{appdir}/HockeyApp.app/Contents/Resources/puck"

  postflight do
    suppress_move_to_applications
  end
end

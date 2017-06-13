cask 'hockey' do
  version '2.0.18,501'
  sha256 'ff1ecf90b86ead33fc84d9c9957b8be53eff441663ab10916c5f11adc5aca3ee'

  url "https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1',
          checkpoint: '956fa50f0b2eba951921dee825f4fb4fdf4ebe661386dc1e4c2fc4f906b8bb10'
  name 'HockeyApp'
  homepage 'https://hockeyapp.net/releases/mac/'

  app 'HockeyApp.app'
  binary "#{appdir}/HockeyApp.app/Contents/Resources/puck"
end

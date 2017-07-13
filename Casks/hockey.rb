cask 'hockey' do
  version '2.0.19,503'
  sha256 '4f4b4c12921242c61e9c9bf12414a4bbb550bd1539973adbc93c5c60fb6181bb'

  url "https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/67503a7926431872c4b6c1549f5bd6b1',
          checkpoint: 'a9d73e714a0199766bf9860903ab810b84e5f4c03c4606a970660108cf2e1346'
  name 'HockeyApp'
  homepage 'https://hockeyapp.net/releases/mac/'

  app 'HockeyApp.app'
  binary "#{appdir}/HockeyApp.app/Contents/Resources/puck"
end

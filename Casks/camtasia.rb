cask 'camtasia' do
  version '2018.0.7,152'
  sha256 '6d7f3b450f82ca338c8114e8f257194f4bc9103663d24936535037b8bee45a65'

  # rink.hockeyapp.net/api/2/apps/5d440dc130030d8a5db2ee6265d8df09 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/5d440dc130030d8a5db2ee6265d8df09/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/5d440dc130030d8a5db2ee6265d8df09'
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  auto_updates true

  app "Camtasia #{version.major}.app"
end

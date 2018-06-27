cask 'camtasia' do
  version '2018.0.1,135'
  sha256 'e0b12e8c9eb99b068c39ed5eb656a37b46feec22a338dafb6040ca91e2391424'

  # rink.hockeyapp.net/api/2/apps/5d440dc130030d8a5db2ee6265d8df09/ was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/5d440dc130030d8a5db2ee6265d8df09/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/5d440dc130030d8a5db2ee6265d8df09'
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  app "Camtasia #{version.major}.app"
end

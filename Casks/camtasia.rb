cask 'camtasia' do
  version '2018.0.8,153'
  sha256 'f6ebb31662c9d6428a73441065c554e553f5db95554d1581e0c93ead7b63f2f5'

  # rink.hockeyapp.net/api/2/apps/5d440dc130030d8a5db2ee6265d8df09 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/5d440dc130030d8a5db2ee6265d8df09/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/5d440dc130030d8a5db2ee6265d8df09'
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  auto_updates true

  app "Camtasia #{version.major}.app"
end

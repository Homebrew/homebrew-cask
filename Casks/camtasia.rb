cask 'camtasia' do
  version '2018.0.2,143'
  sha256 'c10c10f76e28eda0154a074b59417518f06b1bd8daa305d3450798554517bc16'

  # rink.hockeyapp.net/api/2/apps/5d440dc130030d8a5db2ee6265d8df09 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/5d440dc130030d8a5db2ee6265d8df09/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/5d440dc130030d8a5db2ee6265d8df09'
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  auto_updates true

  app "Camtasia #{version.major}.app"
end

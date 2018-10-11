cask 'camtasia' do
  version '2018.0.5,149'
  sha256 '3461e36371a26ac2ae67f554748a3e6707ca07a7ac76fc1f9c0bb10d528ae593'

  # rink.hockeyapp.net/api/2/apps/5d440dc130030d8a5db2ee6265d8df09 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/5d440dc130030d8a5db2ee6265d8df09/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/5d440dc130030d8a5db2ee6265d8df09'
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  auto_updates true

  app "Camtasia #{version.major}.app"
end

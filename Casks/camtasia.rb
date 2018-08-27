cask 'camtasia' do
  version '2018.0.3,145'
  sha256 '7db3be6c75539aee1c32dca2188442a44ee6aaa3041e5a4fba8512f613e5155f'

  # rink.hockeyapp.net/api/2/apps/5d440dc130030d8a5db2ee6265d8df09 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/5d440dc130030d8a5db2ee6265d8df09/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/5d440dc130030d8a5db2ee6265d8df09'
  name 'Camtasia'
  homepage 'https://www.techsmith.com/camtasia.html'

  auto_updates true

  app "Camtasia #{version.major}.app"
end

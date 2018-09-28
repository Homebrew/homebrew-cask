cask 'resilio-sync' do
  version '2.6.1'
  sha256 '543ebefe62d130032ab151d2de36d8d767d7344aacbd00ff07cb5797cb1cda39'

  url "https://download-cdn.resilio.com/#{version}/osx/Resilio-Sync.dmg"
  name 'Resilio Sync'
  homepage 'https://www.resilio.com/'

  auto_updates true

  app 'Resilio Sync.app'
end

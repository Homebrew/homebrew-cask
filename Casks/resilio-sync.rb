cask 'resilio-sync' do
  version '2.6.0'
  sha256 'c0adc6ed6122d98b42e55beb973e33b91926c2c353616bea0311906124ce55a3'

  url "https://download-cdn.resilio.com/#{version}/osx/Resilio-Sync.dmg"
  name 'Resilio Sync'
  homepage 'https://www.resilio.com/'

  auto_updates true

  app 'Resilio Sync.app'
end

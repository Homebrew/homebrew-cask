cask 'noti' do
  version '0.2'
  sha256 '2fcf8bb65f10fe2ad4dc68526f0a16acf0097d71f25eb24d30144ee92c17be47'

  # github.com/jariz/Noti was verified as official when first introduced to the cask
  url "https://github.com/jariz/Noti/releases/download/#{version}/Noti.dmg"
  appcast 'https://github.com/jariz/Noti/releases.atom',
          checkpoint: 'db199fb032af8186bc2b1661a2e989668480ed3e505b9de667f33b546fb3fb5e'
  name 'Noti'
  homepage 'https://noti.center/'

  auto_updates true

  app 'Noti.app'
end

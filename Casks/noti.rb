cask 'noti' do
  version '0.2'
  sha256 '2fcf8bb65f10fe2ad4dc68526f0a16acf0097d71f25eb24d30144ee92c17be47'

  # github.com/jariz/Noti was verified as official when first introduced to the cask
  url "https://github.com/jariz/Noti/releases/download/#{version}/Noti.dmg"
  appcast 'https://github.com/jariz/Noti/releases.atom',
          checkpoint: '0995d4190edae02bb4a10ec1342d620c361333338d7b00b03c11f5fff5d15785'
  name 'Noti'
  homepage 'https://noti.center/'

  auto_updates true

  app 'Noti.app'
end

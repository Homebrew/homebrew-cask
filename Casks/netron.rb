cask 'netron' do
  version '2.3.0'
  sha256 '3e9785de87b7843d7ea1a524b9161ec173dc4c69b7aa2103a838846eb421045f'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

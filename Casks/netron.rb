cask 'netron' do
  version '2.5.2'
  sha256 '6b0333fbc1a40385131a2bac533910fb343337ec8ffd223d70799159eb1133cb'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

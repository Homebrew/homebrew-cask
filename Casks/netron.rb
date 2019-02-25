cask 'netron' do
  version '2.9.2'
  sha256 '431956caafaaf5efc765485cd926a7a33662668d89b07819cc5a9054384c317c'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

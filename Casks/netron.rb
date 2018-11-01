cask 'netron' do
  version '2.4.2'
  sha256 'a9013b6103b98c1734fe61f8b1c7f9e72c5d8558fbe27cefc14bb437ae5e5208'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

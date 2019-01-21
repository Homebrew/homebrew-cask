cask 'netron' do
  version '2.8.2'
  sha256 'dcab72f0eb182ad7b5a7d1abcfc1df64b030b5a5ec1ae6fcf331cb8270764b54'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

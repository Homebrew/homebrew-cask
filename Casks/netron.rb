cask 'netron' do
  version '2.0.8'
  sha256 '9d0ddda7a1bfc3f8b9f8b007e5e276d328fa9f0828e0a4607339b25ba3bcac97'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

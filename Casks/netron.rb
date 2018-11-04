cask 'netron' do
  version '2.4.5'
  sha256 '59fa862f52ff86f13c0fd8d55cb391ba2823f35000f0325b35925349aab2218f'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

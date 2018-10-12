cask 'netron' do
  version '2.2.6'
  sha256 '42c0d0857102dff725eb5117835281b55da7ce02eda9e012b65174d0210249ca'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

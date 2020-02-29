cask 'netron' do
  version '3.9.5'
  sha256 'bb490e3ab1a75f63055c11907be3ae75382f22632a8678d7ee23a5ccc127534f'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

cask 'netron' do
  version '2.3.8'
  sha256 '1638483e9f09c0919adb7acf3280b6631aee0c492140ed5ba23aa18ae9ece451'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

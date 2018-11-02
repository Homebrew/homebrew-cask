cask 'netron' do
  version '2.4.3'
  sha256 '8920ad6425b4ba12fdff442332f3ba81593411cd7bfb31c604c077590d34ec4a'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

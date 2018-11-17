cask 'netron' do
  version '2.5.4'
  sha256 'da85c12bf2e387e037e05de24dfa87d4caa8eab38af6319e5b7ea2b3d0ae3deb'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

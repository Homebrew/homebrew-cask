cask 'netron' do
  version '2.8.7'
  sha256 '3a1677c503e321f35078acb3dde57a3a58d8059e3fcfb154cd8587e8460ffb1f'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

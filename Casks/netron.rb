cask 'netron' do
  version '2.9.8'
  sha256 '27d5454bb4e70cdd43b92d0a21c510ff0f16ccbe9886d2d0fde00503662da674'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

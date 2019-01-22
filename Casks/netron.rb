cask 'netron' do
  version '2.8.3'
  sha256 '3ecba2a4243e30c87948baabffbb7a7979becbb3575bfdb4e456931ddf924fd3'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

cask 'netron' do
  version '2.8.1'
  sha256 'ebb3cfedf8fcc504fe1a515e73e90271a66a92b2fb7f2ef8cf386cf0e81e16bb'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

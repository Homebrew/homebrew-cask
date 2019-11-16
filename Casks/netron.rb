cask 'netron' do
  version '3.5.4'
  sha256 'abf10ba6765530a4e3ee14174aa5abae52b69efca2fb995dfcec5b507c923fb1'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

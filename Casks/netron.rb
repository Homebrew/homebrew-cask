cask 'netron' do
  version '3.7.2'
  sha256 'eeb208fdebdcc182a51f4937ceb2f7f379c39b1ab0430cb0daf19a0397e2f1e8'

  url "https://github.com/lutzroeder/netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/netron'

  auto_updates true

  app 'Netron.app'
end

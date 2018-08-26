cask 'netron' do
  version '2.0.7'
  sha256 '1a369e9fdcf671c943e1089216c27d31901d62ba9104ae4a2939ec8f857adae3'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

cask 'netron' do
  version '2.2.1'
  sha256 '629f61351f149a4110f9e83a2cd7016189d0bf7bbaece5d201de8986cebfd130'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

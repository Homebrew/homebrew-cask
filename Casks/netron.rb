cask 'netron' do
  version '2.1.2'
  sha256 'fa92f672211a00df1b1a2e329f3279878ce41dd1aca4bf357690c687c26a1a1d'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

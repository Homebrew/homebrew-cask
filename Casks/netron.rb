cask 'netron' do
  version '2.7.2'
  sha256 '3213b6089d91b51e26e46794bdd2a3e2f5318dd7715f812e14d6ce584f10cfb6'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

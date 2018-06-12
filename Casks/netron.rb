cask 'netron' do
  version '1.8.6'
  sha256 '2f76b9eb8f5bcbba7f558d184a0a35377bb623a207f6cc2469f40d9906a359fe'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

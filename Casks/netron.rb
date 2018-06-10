cask 'netron' do
  version '1.8.6'
  sha256 '2f76b9eb8f5bcbba7f558d184a0a35377bb623a207f6cc2469f40d9906a359fe'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '441703f881996321eebf9236b7b18e70214259ea790ff1aa625d9694edd85b0a'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end

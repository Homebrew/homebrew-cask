cask 'bdash' do
  version '1.7.1'
  sha256 '505a046e21e1cf21ce874303b7b74d8b5bf7fa3277c93bd534d0c9e521bc0602'

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  appcast 'https://github.com/bdash-app/bdash/releases.atom'
  name 'Bdash'
  homepage 'https://github.com/bdash-app/bdash'

  app 'Bdash.app'
end

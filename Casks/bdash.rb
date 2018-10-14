cask 'bdash' do
  version '1.5.3'
  sha256 '9a28c88a999281763247d570e18359f5d98f4e9c6882a65bd758593e613a7a21'

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  appcast 'https://github.com/bdash-app/bdash/releases.atom'
  name 'Bdash'
  homepage 'https://github.com/bdash-app/bdash'

  app 'Bdash.app'
end

cask 'bdash' do
  version '1.8.0'
  sha256 'b7c1bbdc4796b28f9b1415aae78b2a0d3b019e9d142732e60b074180daacf79f'

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  appcast 'https://github.com/bdash-app/bdash/releases.atom'
  name 'Bdash'
  homepage 'https://github.com/bdash-app/bdash'

  app 'Bdash.app'
end

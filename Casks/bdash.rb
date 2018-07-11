cask 'bdash' do
  version '1.5.0'
  sha256 '7adaa59e2af974cca90041f69c4d8dc6631eb47d4646bd89adccf0660b41b08d'

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  appcast 'https://github.com/bdash-app/bdash/releases.atom'
  name 'Bdash'
  homepage 'https://github.com/bdash-app/bdash'

  app 'Bdash.app'
end

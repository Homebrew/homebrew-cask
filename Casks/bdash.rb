cask 'bdash' do
  version '1.5.6'
  sha256 '9de0a27c9f58826341d36518cff441babcc69f285b9e9689af4ce768f781d690'

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  appcast 'https://github.com/bdash-app/bdash/releases.atom'
  name 'Bdash'
  homepage 'https://github.com/bdash-app/bdash'

  app 'Bdash.app'
end

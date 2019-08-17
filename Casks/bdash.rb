cask 'bdash' do
  version '1.5.7'
  sha256 '1cfa66d219e2348994e5a2dc4ca18b976466e27078a6c239ce71336131e64bcf'

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  appcast 'https://github.com/bdash-app/bdash/releases.atom'
  name 'Bdash'
  homepage 'https://github.com/bdash-app/bdash'

  app 'Bdash.app'
end

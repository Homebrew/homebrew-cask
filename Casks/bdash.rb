cask 'bdash' do
  version '1.8.2'
  sha256 'b4893236b613ca9d56df1de050cc0c37c597e7ee914a379ad41d66adbfddd7b3'

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  appcast 'https://github.com/bdash-app/bdash/releases.atom'
  name 'Bdash'
  homepage 'https://github.com/bdash-app/bdash'

  app 'Bdash.app'
end

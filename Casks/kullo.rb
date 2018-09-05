cask 'kullo' do
  version '57.0.0'
  sha256 '01603e375246db52ac65a6363a6a285067297a076eb3c358b7fed16d39fcd81d'

  url "https://www.kullo.net/download/files/osx/Kullo-#{version}.dmg"
  name 'Kullo'
  homepage 'https://www.kullo.net/'

  depends_on macos: '>= :mavericks'

  app 'Kullo.app'
end

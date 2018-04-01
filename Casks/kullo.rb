cask 'kullo' do
  version '56.0.0'
  sha256 '4d8d9b8f86e5917ead6c50ea92a0021b5c014d2db3f30982c01141487e575536'

  url "https://www.kullo.net/download/files/osx/Kullo-#{version}.dmg"
  name 'Kullo'
  homepage 'https://www.kullo.net/'

  depends_on macos: '>= :mavericks'

  app 'Kullo.app'
end

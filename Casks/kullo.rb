cask 'kullo' do
  version '53.0.0'
  sha256 'dc43528a8615b5872c8a58004c40cf1af85c2bc29ce0e9750b599e6c3ea4c2c1'

  url "https://www.kullo.net/download/files/osx/Kullo-#{version}.dmg"
  name 'Kullo'
  homepage 'https://www.kullo.net/'

  depends_on macos: '>= :mavericks'

  app 'Kullo.app'
end

cask 'kullo' do
  version '50.0.0'
  sha256 '5b70563a3726f8477c65113ef61df3c3df287e13a457b80b0547d365aba4e9dd'

  url "https://www.kullo.net/download/files/osx/Kullo-#{version}.dmg"
  name 'Kullo'
  homepage 'https://www.kullo.net/'

  depends_on macos: '>= :mavericks'

  app 'Kullo.app'
end

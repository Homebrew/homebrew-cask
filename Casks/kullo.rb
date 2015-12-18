cask 'kullo' do
  version '0.29.0'
  sha256 'e2b4a24af038a5f1b675843c4752549399678e9f286429c4c05e572531c0cd6e'

  url "https://www.kullo.net/download/files/osx/Kullo-#{version}.dmg"
  name 'Kullo'
  homepage 'https://www.kullo.net/'
  license :gratis

  app 'Kullo.app'
end

cask 'macjournal' do
  version '7.0.2'
  sha256 'e6c5a07eee839a9f3328c806daca0462711d893f7674c9e99bd8abb86f595dc7'

  url "https://danschimpf.com/macjournal/MacJournal_#{version}.zip"
  appcast "https://danschimpf.com/appcasts/MacJournal#{version.major}.appcast"
  name 'MacJournal'
  homepage 'https://danschimpf.com/'

  app 'MacJournal.app'
end

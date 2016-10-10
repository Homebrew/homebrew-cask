cask 'stamp' do
  version '4.2.25'
  sha256 'f8f322fbbcfd542fad37c9721b1438f20f26936e8d41abff675204490b5b1f9d'

  url "https://stampapp.io/media/STAMP#{version.no_dots}.dmg"
  name 'Stamp'
  homepage 'https://stampapp.io'

  app 'STAMP.app'
end

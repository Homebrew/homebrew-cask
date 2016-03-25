cask 'stamp' do
  version '4.2.15'
  sha256 '31df653ab3bdebab1e4ff47ba027cefd652b952515ebf823b89d5b175b68b65d'

  url "https://stampapp.io/media/STAMP#{version.delete('.')}.dmg"
  name 'Stamp'
  homepage 'https://stampapp.io'
  license :closed

  app 'STAMP.app'
end

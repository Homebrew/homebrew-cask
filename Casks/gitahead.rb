cask 'gitahead' do
  version '2.6.2'
  sha256 'ea648b55fec93fbd34fb994d3f1b7726bf574c6dcecb0ddc40da22a5f4fead33'

  url "https://github.com/gitahead/gitahead/releases/download/v#{version}/GitAhead-#{version}.dmg"
  appcast 'https://github.com/gitahead/gitahead/releases.atom'
  name 'GitAhead'
  homepage 'https://github.com/gitahead/gitahead'

  depends_on macos: '>= :sierra'

  app 'GitAhead.app'
end

cask 'gitahead' do
  version '2.5.7'
  sha256 '7e6138283e7610ab364baff89e73cf4ba9f5018dd146ecb044422b1a7dd61a1d'

  url "https://github.com/gitahead/gitahead/releases/download/v#{version}/GitAhead-#{version}.dmg"
  appcast 'https://github.com/gitahead/gitahead/releases.atom'
  name 'GitAhead'
  homepage 'https://github.com/gitahead/gitahead'

  depends_on macos: '>= :sierra'

  app 'GitAhead.app'
end

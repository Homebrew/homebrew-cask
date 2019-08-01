cask 'gitahead' do
  version '2.5.8'
  sha256 'ce8fff4f9e2329f9ea9ae67c4c0928ece49a31650f38f05711c9a8d0a8f140c2'

  url "https://github.com/gitahead/gitahead/releases/download/v#{version}/GitAhead-#{version}.dmg"
  appcast 'https://github.com/gitahead/gitahead/releases.atom'
  name 'GitAhead'
  homepage 'https://github.com/gitahead/gitahead'

  depends_on macos: '>= :sierra'

  app 'GitAhead.app'
end

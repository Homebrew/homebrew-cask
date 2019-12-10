cask 'gitahead' do
  version '2.5.11'
  sha256 '27bd8741edf7b65b40c888e444d151fc20f44c3875268d069091a5dd3fdec71a'

  url "https://github.com/gitahead/gitahead/releases/download/v#{version}/GitAhead-#{version}.dmg"
  appcast 'https://github.com/gitahead/gitahead/releases.atom'
  name 'GitAhead'
  homepage 'https://github.com/gitahead/gitahead'

  depends_on macos: '>= :sierra'

  app 'GitAhead.app'
end

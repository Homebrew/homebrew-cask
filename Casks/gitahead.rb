cask 'gitahead' do
  version '2.5.10'
  sha256 '2bf53aa0b50fefe580176d4669f7936c8f55ce83115929febb5888e8d5099e13'

  url "https://github.com/gitahead/gitahead/releases/download/v#{version}/GitAhead-#{version}.dmg"
  appcast 'https://github.com/gitahead/gitahead/releases.atom'
  name 'GitAhead'
  homepage 'https://github.com/gitahead/gitahead'

  depends_on macos: '>= :sierra'

  app 'GitAhead.app'
end

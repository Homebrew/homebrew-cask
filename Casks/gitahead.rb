cask 'gitahead' do
  version '2.6.1'
  sha256 'a4dbbbd7c72c34acfdcad94d5217dfba00a16c64440d3a2f155a937a94d87fff'

  url "https://github.com/gitahead/gitahead/releases/download/v#{version}/GitAhead-#{version}.dmg"
  appcast 'https://github.com/gitahead/gitahead/releases.atom'
  name 'GitAhead'
  homepage 'https://github.com/gitahead/gitahead'

  depends_on macos: '>= :sierra'

  app 'GitAhead.app'
end

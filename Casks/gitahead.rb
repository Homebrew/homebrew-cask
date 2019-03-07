cask 'gitahead' do
  version '2.5.4'
  sha256 'd95f5c578ab744d66160d9da8e88ad50866bc1c6cd9c40b98d74e0b14ea54c35'

  url "https://github.com/gitahead/gitahead/releases/download/v#{version}/GitAhead-#{version}.dmg"
  appcast 'https://github.com/gitahead/gitahead/releases.atom'
  name 'GitAhead'
  homepage 'https://github.com/gitahead/gitahead'

  app 'GitAhead.app'
end

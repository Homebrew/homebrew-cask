cask 'gitahead' do
  version '2.5.5'
  sha256 'a77d4a44ca0c2700a712180b6e9edcf6f8a62280e5ffe3fdd42dc0c7156b2035'

  url "https://github.com/gitahead/gitahead/releases/download/v#{version}/GitAhead-#{version}.dmg"
  appcast 'https://github.com/gitahead/gitahead/releases.atom'
  name 'GitAhead'
  homepage 'https://github.com/gitahead/gitahead'

  app 'GitAhead.app'
end

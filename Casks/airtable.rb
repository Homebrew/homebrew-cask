cask 'airtable' do
  version '1.3.2'
  sha256 '839466d30355952114a63a409e4e98796285a0be71b81458bd259ace1ba273c8'

  url "https://static.airtable.com/download/macos/Airtable-#{version}.dmg"
  appcast 'https://airtable.com/mac'
  name 'Airtable'
  homepage 'https://airtable.com/'

  auto_updates true

  app 'Airtable.app'
end

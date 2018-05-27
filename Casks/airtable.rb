cask 'airtable' do
  version '1.3.0'
  sha256 'e6cd7e0e419de8ec77884ec4eb404365f861e8eaf1b1fc864dda30d88540cf6f'

  url "https://static.airtable.com/download/macos/Airtable-#{version}.dmg"
  name 'Airtable'
  homepage 'https://airtable.com/'

  auto_updates true

  app 'Airtable.app'
end

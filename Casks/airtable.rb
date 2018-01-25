cask 'airtable' do
  version '1.2.1'
  sha256 '48de85c8d98dc5acb9b5f7436a292000f622b0d4f298232edb762c6e0f3a5ab1'

  url "https://static.airtable.com/download/macos/Airtable-#{version}.dmg"
  name 'Airtable'
  homepage 'https://airtable.com/'

  app 'Airtable.app'
end

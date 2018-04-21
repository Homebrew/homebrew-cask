cask 'airtable' do
  version '1.2.4'
  sha256 'a76f5e21f832652c19f79bca96ae83903f079d6fb94c2ffd27a1da9bf21a9bf3'

  url "https://static.airtable.com/download/macos/Airtable-#{version}.dmg"
  name 'Airtable'
  homepage 'https://airtable.com/'

  app 'Airtable.app'
end

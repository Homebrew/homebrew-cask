cask 'airtable' do
  version :latest
  sha256 :no_check

  url 'https://static.airtable.com/download/AirtableInstaller.dmg'
  name 'Airtable'
  homepage 'https://airtable.com/'
  license :gratis

  app 'Airtable.app'
end

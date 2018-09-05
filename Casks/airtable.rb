cask 'airtable' do
  version '1.3.1'
  sha256 '1a9c26e1c464b55dd33f8a008aef2ede2f55cd398e4f48f41dc0275581a63f66'

  url "https://static.airtable.com/download/macos/Airtable-#{version}.dmg"
  name 'Airtable'
  homepage 'https://airtable.com/'

  auto_updates true

  app 'Airtable.app'
end

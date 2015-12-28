cask 'fullcontact' do
  version '1.0'
  sha256 'e828f62a6546d901dd3a8d11979541cdaaae2cda6d6010ebba7e9b954c700859'

  url "http://mac.cdn.fullcontact.com/FullContact-#{version}.dmg"
  name 'FullContact'
  homepage 'https://www.fullcontact.com'
  license :gratis

  app 'FullContact.app'
end

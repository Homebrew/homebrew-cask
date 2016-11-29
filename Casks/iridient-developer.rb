cask 'iridient-developer' do
  version '3.1.2'
  sha256 '740aa73096d8729dcd0b457b6b76f5f8056347a3f8104112999283814a5bddc1'

  url "http://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  name 'Iridient Developer'
  homepage 'http://www.iridientdigital.com/'

  app 'Iridient Developer.app'
end

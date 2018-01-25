cask 'iridient-developer' do
  version '3.2.0'
  sha256 '8e6c183776cb984364136881f8fba2323c5dd22f206d6fffba268924cdb2fd15'

  url "http://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  appcast 'http://www.iridientdigital.com/products/rawdeveloper_history.html',
          checkpoint: '2a1b16663ae1efb0b8d1484da4dc5b6e2ac6cfedf6232cb052c95b9ba1a91b4f'
  name 'Iridient Developer'
  homepage 'http://www.iridientdigital.com/'

  app 'Iridient Developer.app'
end

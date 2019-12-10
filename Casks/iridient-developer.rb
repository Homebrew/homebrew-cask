cask 'iridient-developer' do
  version '3.3.8'
  sha256 '41d4a84641f08753bbe5e77ddf3c0f13682b93d28793514ddddbc216bb90db88'

  url "https://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  appcast 'https://www.iridientdigital.com/products/rawdeveloper_history.html'
  name 'Iridient Developer'
  homepage 'https://www.iridientdigital.com/'

  app 'Iridient Developer.app'
end

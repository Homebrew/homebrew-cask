cask 'idagio' do
  version '0.0.87'
  sha256 '81c12c697660b9135f675a75cd8a466bb380aca9c63bad9ace6a802f1191a9c7'

  url "https://dl.idagio.com/IDAGIO-#{version}.dmg"
  name 'IDAGIO'
  homepage 'https://www.idagio.com/'

  app 'IDAGIO.app'
end

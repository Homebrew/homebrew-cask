cask 'hirundo' do
  version '1.0.0'
  sha256 '54e332363bac27c337fadba3d342eb360661f6d7ee5a839b0b5893c296ba616d'

  url "https://stylemac.com/hirundo/versions/#{version}/Hirundo.zip"
  appcast 'https://stylemac.com/hirundo/versions/current.json'
  name 'Hirundo'
  homepage 'https://stylemac.com/hirundo/'

  app 'Hirundo.app'
end

cask 'hirundo' do
  version '1.0.0'
  sha256 '54e332363bac27c337fadba3d342eb360661f6d7ee5a839b0b5893c296ba616d'

  url "https://stylemac.com/hirundo/versions/#{version}/Hirundo.zip"
  appcast 'https://stylemac.com/hirundo/versions/current.json',
          checkpoint: '2426e6b12ee68b53ad4ebb41541fe9b8a133ef2554a89f4f248d449e465771fe'
  name 'Hirundo'
  homepage 'https://stylemac.com/hirundo/'

  app 'Hirundo.app'
end

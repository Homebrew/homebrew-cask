cask 'freeze' do
  version '1.4.1'
  sha256 '0967fbc3c6a625fbccee98afc3871f06d4022513a94456985d6118f672830485'

  url 'https://freezeapp.net/download/Freeze.zip'
  appcast 'https://freezeapp.net/appcast.xml',
          checkpoint: '2949af5c345bdd1972cc6144d961e4b4e95c8756b5b97cd49d3d76b397245f6c'
  name 'Freeze'
  homepage 'https://freezeapp.net/'
  license :freemium

  app 'Freeze.app'
end

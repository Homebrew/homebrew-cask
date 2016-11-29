cask 'carmetal' do
  version :latest
  sha256 :no_check

  url 'http://db-maths.nuxit.net/CaRMetal/download/carmetal.dmg'
  appcast 'http://db-maths.nuxit.net/CaRMetal/telechargement_en.html',
          checkpoint: '4caaf30e8385702176b6cb1358bdcb91187e3e5f9427b15f1fb661d2b13dd30f'
  name 'CaRMetal'
  homepage 'http://db-maths.nuxit.net/CaRMetal/index_en.html'

  app 'CaRMetal.app'
end

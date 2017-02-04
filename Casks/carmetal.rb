cask 'carmetal' do
  version '3.8.2'
  sha256 'ca91624b708b50428d4390ae2c21176d689d73f5e432061fc8922f43bc4d33b3'

  url 'http://db-maths.nuxit.net/CaRMetal/download/carmetal.dmg'
  appcast 'http://db-maths.nuxit.net/CaRMetal/telechargement_en.html',
          checkpoint: '27dc224170e577131722b1fda1c86db8cbfeb4915dfbc9ca463cb0aa35d8eb8c'
  name 'CaRMetal'
  homepage 'http://db-maths.nuxit.net/CaRMetal/index_en.html'

  app 'CaRMetal.app'
end

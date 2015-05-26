cask :v1 => 'carbon-copy-cloner' do
  version :latest
  sha256 :no_check

  url 'http://www.bombich.com/software/download_ccc.php?v=latest&l=alternate'
  appcast 'http://www.bombich.com/software/updates/ccc.php',
          :sha256 => 'ec02ebdd3e4bee0527d46e8256372249780fb1a4fb93ddb782e9da87787bbdff'
  name 'Carbon Copy Cloner'
  homepage 'http://bombich.com/'
  license :commercial

  app 'Carbon Copy Cloner.app'
end

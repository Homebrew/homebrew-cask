cask 'carbon-copy-cloner' do
  version :latest
  sha256 :no_check

  url 'https://www.bombich.com/software/download_ccc.php?v=latest&l=alternate'
  appcast 'https://www.bombich.com/software/updates/ccc.php',
          :checkpoint => '06cfc29f8c4b697139c437a95092890dc87cbab6ef3e9bc4e1561f70f7e15af4'
  name 'Carbon Copy Cloner'
  homepage 'https://bombich.com/'
  license :commercial

  app 'Carbon Copy Cloner.app'
end

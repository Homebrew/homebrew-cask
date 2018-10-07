cask 'sequin' do
  version :latest
  sha256 :no_check

  url 'https://ftp.ncbi.nih.gov/sequin/sequin.mac.dmg'
  name 'Sequin'
  homepage 'https://www.ncbi.nlm.nih.gov/Sequin/'

  app 'Sequin Folder/Sequin.app'
end

cask 'sequin' do
  version :latest
  sha256 :no_check

  url 'ftp://ftp.ncbi.nih.gov/sequin/sequin.mac.dmg'
  name 'Sequin'
  homepage 'https://www.ncbi.nlm.nih.gov/Sequin/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Sequin Folder/Sequin.app'
end

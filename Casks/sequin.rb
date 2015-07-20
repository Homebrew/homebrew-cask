cask :v1 => 'sequin' do
  version :latest
  sha256 :no_check

  url 'ftp://ftp.ncbi.nih.gov/sequin/sequin.mac.dmg'
  name 'Sequin'
  homepage 'http://www.ncbi.nlm.nih.gov/Sequin/'
  license :unknown

  app 'Sequin Folder/Sequin.app'
end

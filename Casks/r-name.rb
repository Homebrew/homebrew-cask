cask 'r-name' do
  version :latest
  sha256 :no_check

  url 'http://www.jacek-dom.net/software/R-Name/R-Name.app.zip'
  name 'R-Name'
  homepage 'http://www.jacek-dom.net/software/R-Name/'
  license :gpl

  app 'R-Name.app'
end

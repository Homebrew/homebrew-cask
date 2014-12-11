cask :v1 => 'r-name' do
  version :latest
  sha256 :no_check

  url 'http://www.jacek-dom.net/software/R-Name/R-Name.app.zip'
  homepage 'http://www.jacek-dom.net/software/R-Name/'
  license :unknown    # todo: improve this machine-generated value

  app 'R-Name.app'
end

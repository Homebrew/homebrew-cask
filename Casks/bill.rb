class Bill < Cask
  version :latest
  sha256 :no_check

  url 'http://myownapp.com/downloads/Bill.zip'
  homepage 'http://billtheapp.com/'

  app 'Bill.app'
end

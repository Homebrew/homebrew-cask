cask :v1 => 'bill' do
  version :latest
  sha256 :no_check

  url 'http://myownapp.com/downloads/Bill.zip'
  homepage 'http://billtheapp.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Bill.app'
end

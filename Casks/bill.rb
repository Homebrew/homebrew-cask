cask :v1 => 'bill' do
  version :latest
  sha256 :no_check

  url 'http://myownapp.com/downloads/Bill2.zip'
  name 'Bill'
  homepage 'http://billtheapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Bill 2.app'
end

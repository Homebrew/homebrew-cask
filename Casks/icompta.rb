cask :v1 => 'icompta' do
  version :latest
  sha256 :no_check

  url 'http://www.icompta-app.com/files/iCompta_Demo.zip'
  homepage 'http://www.icompta-app.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iCompta.app'
end

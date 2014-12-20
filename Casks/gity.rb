cask :v1 => 'gity' do
  version :latest
  sha256 :no_check

  url 'http://gityapp.com/Gity.zip'
  appcast 'http://gityapp.com/gity.xml'
  homepage 'http://gityapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Gity.app'
end

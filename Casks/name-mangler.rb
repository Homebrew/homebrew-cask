cask :v1 => 'name-mangler' do
  version :latest
  sha256 :no_check

  url 'http://manytricks.com/download/namemangler'
  appcast 'http://manytricks.com/namemangler/appcast.xml'
  homepage 'http://manytricks.com/namemangler/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Name Mangler.app'
end

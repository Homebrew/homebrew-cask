cask :v1 => 'name-mangler' do
  version :latest
  sha256 :no_check

  url 'http://manytricks.com/download/namemangler'
  appcast 'http://manytricks.com/namemangler/appcast.xml'
  homepage 'http://manytricks.com/namemangler/'
  license :unknown    # todo: improve this machine-generated value

  app 'Name Mangler.app'
end

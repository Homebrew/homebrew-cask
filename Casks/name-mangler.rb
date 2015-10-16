cask :v1 => 'name-mangler' do
  version :latest
  sha256 :no_check

  url 'http://manytricks.com/download/namemangler'
  appcast 'http://manytricks.com/namemangler/appcast.xml'
  name 'Name Mangler'
  homepage 'http://manytricks.com/namemangler/'
  license :freemium

  app 'Name Mangler.app'
end

cask 'name-mangler' do
  version :latest
  sha256 :no_check

  url 'http://manytricks.com/download/namemangler'
  appcast 'https://manytricks.com/namemangler/appcast.xml',
          :checkpoint => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b856'
  name 'Name Mangler'
  homepage 'https://manytricks.com/namemangler/'
  license :freemium

  app 'Name Mangler.app'
end

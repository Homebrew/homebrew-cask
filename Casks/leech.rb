cask 'leech' do
  version :latest
  sha256 :no_check

  url 'http://manytricks.com/download/leech'
  appcast 'https://manytricks.com/leech/appcast.xml',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'Leech'
  homepage 'https://manytricks.com/leech/'
  license :commercial

  app 'Leech.app'
end

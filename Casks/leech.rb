cask :v1 => 'leech' do
  version :latest
  sha256 :no_check

  url 'http://manytricks.com/download/leech'
  homepage 'http://manytricks.com/leech/'
  license :commercial

  app 'Leech.app'
end

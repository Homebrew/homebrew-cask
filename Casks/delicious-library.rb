cask :v1 => 'delicious-library' do
  version :latest
  sha256 :no_check

  url 'http://delicious-monster.com/downloads/DeliciousLibrary3.zip'
  homepage 'http://delicious-monster.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Delicious Library 3.app'
end

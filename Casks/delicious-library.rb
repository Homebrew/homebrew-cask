cask :v1 => 'delicious-library' do
  version :latest
  sha256 :no_check

  url 'http://delicious-monster.com/downloads/DeliciousLibrary3.zip'
  homepage 'http://delicious-monster.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Delicious Library 3.app'
end

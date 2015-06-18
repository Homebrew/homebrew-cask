cask :v1 => 'delicious-library' do
  version :latest
  sha256 :no_check

  url 'http://delicious-monster.com/downloads/DeliciousLibrary3.zip'
  name 'Delicious Library'
  appcast 'http://www.delicious-monster.com/downloads/DeliciousLibrary3.xml',
          :sha256 => '5f9eaea34e47cd1255f02a48ddca41433cd27aec146387a3221d1267b286c6e6'
  homepage 'http://delicious-monster.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Delicious Library 3.app'
end

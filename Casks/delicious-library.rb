cask :v1 => 'delicious-library' do
  version '3.3.5'
  sha256 '7f039110430f02013e217ab2ca6c3aba1922f795961ee744d8465d155f004104'

  url "https://delicious-monster.com/downloads/DeliciousLibrary3/v#{version}/DeliciousLibrary3.zip"
  name 'Delicious Library'
  appcast 'https://www.delicious-monster.com/downloads/DeliciousLibrary3.xml',
          :sha256 => '5f9eaea34e47cd1255f02a48ddca41433cd27aec146387a3221d1267b286c6e6'
  homepage 'https://delicious-monster.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Delicious Library 3.app'
end

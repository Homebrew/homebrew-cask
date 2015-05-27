cask :v1 => 'semulov' do
  version '2.0'
  sha256 'de2b9d4e874885a6421c17fb716e2072827c4d111c946d15ada2b4d31392e803'

  url "http://kainjow.com/downloads/Semulov_#{version}.zip"
  name 'Semulov'
  appcast 'http://kainjow.com/updates/semulov.xml',
          :sha256 => '289af052d4533d353fb8a5d21c4e6349b57a30849adb80c13ea27287addfc0cf'
  homepage 'http://www.kainjow.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Semulov.app'
end

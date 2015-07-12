cask :v1 => 'anxiety' do
  version '1.0'
  sha256 'dba5afb10069592fbef623b2ddd53009da84dbf9bb3fd6720e849c304282e708'

  url "http://www.anxietyapp.com/downloads/Anxiety_#{version}.zip"
  name 'Anxiety'
  appcast 'http://www.anxietyapp.com/appcast/appcast.xml'
  homepage 'http://www.anxietyapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Anxiety.app'
end

cask :v1 => 'anxiety' do
  version '1.0'
  sha256 'dba5afb10069592fbef623b2ddd53009da84dbf9bb3fd6720e849c304282e708'

  url "http://www.anxietyapp.com/downloads/Anxiety_#{version}.zip"
  appcast 'http://www.anxietyapp.com/appcast/appcast.xml'
  name 'Anxiety'
  homepage 'http://www.anxietyapp.com/'
  license :gratis

  app 'Anxiety.app'
end

cask 'senuti' do
  version '1.3.5'
  sha256 'cc7fc7910456affb479c99aa89d3c89122142354200990a27aecdde4dc90bdb7'

  url "https://www.fadingred.com/files/senuti/senuti_#{version}.zip"
  appcast 'https://www.fadingred.com/senuti/updates.xml'
  name 'Senuti'
  homepage 'https://www.fadingred.com/senuti/'

  app 'Senuti.app'
end

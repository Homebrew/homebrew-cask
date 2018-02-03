cask 'senuti' do
  version '1.3.5'
  sha256 'cc7fc7910456affb479c99aa89d3c89122142354200990a27aecdde4dc90bdb7'

  url "https://www.fadingred.com/files/senuti/senuti_#{version}.zip"
  appcast 'https://www.fadingred.com/senuti/updates.xml',
          checkpoint: '9887f179cf0aee7a872f1600991d4f76f189a3734e303e7cf1c6c2ae9f9beeff'
  name 'Senuti'
  homepage 'https://www.fadingred.com/senuti/'

  app 'Senuti.app'
end

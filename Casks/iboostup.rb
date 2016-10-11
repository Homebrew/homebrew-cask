cask 'iboostup' do
  version '5.5.1'
  sha256 'b8dd96f4aba6db97eb9c26db58a2ee13e55c3a5ee96d10d5117ff192a6885299'

  url 'https://www.iboostup.com/iboostup.dmg'
  appcast 'https://www.iboostup.com/updates',
          checkpoint: '7ab6d560d8e3fcd58d5f6b510a77709b3ae9f8ab9433fc9b7911890a76adc8d6'
  name 'iBoostUp'
  homepage 'https://www.iboostup.com/'

  app 'iBoostUp.app'
end

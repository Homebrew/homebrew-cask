cask 'hearthstone' do
  version :latest
  sha256 :no_check

  url 'https://www.battle.net/download/getInstallerForGame?os=mac&locale=enUS&version=LIVE&gameProgram=HEARTHSTONE'
  name 'Hearthstone'
  homepage 'http://us.battle.net/hearthstone/en/'

  installer manual: 'Hearthstone-Setup.app'
end

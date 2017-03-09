cask 'meteorologist' do
  version '3.0.0'
  sha256 '181dd4edfbc7bd7c348ad2add85bfe08a36749c60ad3dfa06bd75ff73a35ba93'

  url "https://downloads.sourceforge.net/heat-meteo/Meteorologist-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/heat-meteo/rss',
          checkpoint: '7a924de4dd6ec13e8e4040acee154e9eac380bf59652ed96940b340080825b2b'
  name 'Meteorologist'
  homepage 'http://heat-meteo.sourceforge.net/'

  app 'Meteorologist.app'
end

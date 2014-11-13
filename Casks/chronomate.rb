cask :v1 => 'chronomate' do
  version '0.9.2'
  sha256 '76b2f87b088c57aac7dfd18215b07e078d453ed351af056db25bb78d67e4862b'

  url "https://studio-qb.com/sites/studio-qb.com/files/releases/chronomate_#{version}.dmg"
  appcast 'http://chronomateapp.com/update',
          :sha256 => 'fc538460e350c638a7e1b87e91e0cc79bbf8e324dc28819a818deee090037feb'
  homepage 'http://chronomateapp.com/'
  license :unknown

  app 'ChronoMate.app'
end

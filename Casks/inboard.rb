cask :v1 => 'inboard' do
  version '184'
  sha256 '3bb602cde63f0b3401fc681cd50a3545c5a47c2326ea81cf66844039fb100522'

  url "http://dl.devmate.com/com.ideabits.Inboard/#{version}/1390822305/Inboard-#{version}.dmg"
  appcast 'http://updates.devmate.com/com.ideabits.Inboard.xml',
          :sha256 => '3bde9bcd42058928757ce5b3edc9de1ef4f488b190b8efec40e6c7e4fd69a020'
  homepage 'http://inboardapp.com/beta'
  license :unknown    # todo: improve this machine-generated value

  app 'Inboard.app'
end

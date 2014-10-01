class Inboard < Cask
  version '184'
  sha256 '3bb602cde63f0b3401fc681cd50a3545c5a47c2326ea81cf66844039fb100522'

  url "http://dl.devmate.com/com.ideabits.Inboard/#{version}/1390822305/Inboard-#{version}.dmg"
  appcast 'http://updates.devmate.com/com.ideabits.Inboard.xml'
  homepage 'http://inboardapp.com/beta'
  license :unknown

  app 'Inboard.app'
end

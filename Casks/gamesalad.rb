cask :v1 => 'gamesalad' do
  version '1.24.39'
  sha256 '69bbd190f6028b01b7e9909d63a37004a62b385881c743f7a104b6d8b558c7fe'

  url "http://releases.gamesalad.com/creator/#{version}/GameSalad-Creator-#{version}.dmg"
  name 'GameSalad'
  appcast 'https://gamesalad.com/download/studioUpdates',
          :sha256 => 'f795db40462f32528fecab241619db84a36529edc0ff8943f47459c608f79c32'
  homepage 'https://gamesalad.com/'
  license :commercial

  app 'GameSalad.app'
end

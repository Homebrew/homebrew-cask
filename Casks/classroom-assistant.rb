cask 'classroom-assistant' do
  version '1.0.2'
  sha256 'ff7c2602560655fb9e0df847a3a2509cc5eedff3d7b97c081687d2491392f16f'

  url "https://github.com/education/classroom-assistant/releases/download/v#{version}/Classroom.Assistant-darwin-x64-#{version}.zip"
  appcast 'https://github.com/education/classroom-assistant/releases.atom'
  name 'GitHub Classroom Assistant'
  homepage 'https://classroom.github.com/assistant'

  app 'Classroom Assistant.app'
end

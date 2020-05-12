cask 'classroom-assistant' do
  version '2.0.0'
  sha256 '9af87976ab74f131a3486329229ffdd40ecdb3ebff082cdc2c2fac08a22394c5'

  url "https://github.com/education/classroom-assistant/releases/download/v#{version}/Classroom.Assistant-darwin-x64-#{version}.zip"
  appcast 'https://github.com/education/classroom-assistant/releases.atom'
  name 'GitHub Classroom Assistant'
  homepage 'https://classroom.github.com/assistant'

  app 'Classroom Assistant.app'
end

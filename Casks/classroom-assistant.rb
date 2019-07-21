cask 'classroom-assistant' do
  version '1.0.5'
  sha256 '78ec7624e3fc92f7e9d90d768cd8e6fbbc981ac187af7a36fb195d59e6feb62a'

  url "https://github.com/education/classroom-assistant/releases/download/v#{version}/Classroom.Assistant-darwin-x64-#{version}.zip"
  appcast 'https://github.com/education/classroom-assistant/releases.atom'
  name 'GitHub Classroom Assistant'
  homepage 'https://classroom.github.com/assistant'

  app 'Classroom Assistant.app'
end

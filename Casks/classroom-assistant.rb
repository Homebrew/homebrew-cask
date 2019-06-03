cask 'classroom-assistant' do
  version '1.0.4'
  sha256 '48fecda2ce6d882c1ecf7714844bc613b8fced4b24c75d0e5c8525a9265556e8'

  url "https://github.com/education/classroom-assistant/releases/download/v#{version}/Classroom.Assistant-darwin-x64-#{version}.zip"
  appcast 'https://github.com/education/classroom-assistant/releases.atom'
  name 'GitHub Classroom Assistant'
  homepage 'https://classroom.github.com/assistant'

  app 'Classroom Assistant.app'
end

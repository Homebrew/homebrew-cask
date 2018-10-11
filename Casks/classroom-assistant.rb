cask 'classroom-assistant' do
  version '1.0.1'
  sha256 'c6be6a373dc043b1760628d750a123195788bec23935b1c7dfa8cf7a1bf98976'

  url "https://github.com/education/classroom-assistant/releases/download/v#{version}/Classroom.Assistant-darwin-x64-#{version}.zip"
  appcast 'https://github.com/education/classroom-assistant/releases.atom'
  name 'GitHub Classroom Assistant'
  homepage 'https://classroom.github.com/assistant'

  app 'Classroom Assistant.app'
end

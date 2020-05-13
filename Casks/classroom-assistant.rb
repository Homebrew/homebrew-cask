cask 'classroom-assistant' do
  version '2.0.1'
  sha256 'b3e13813d5895cb115a44714d24a0a279efc7c6e04b59922de3dd3cd7bfeeac2'

  url "https://github.com/education/classroom-assistant/releases/download/v#{version}/Classroom.Assistant-darwin-x64-#{version}.zip"
  appcast 'https://github.com/education/classroom-assistant/releases.atom'
  name 'GitHub Classroom Assistant'
  homepage 'https://classroom.github.com/assistant'

  app 'Classroom Assistant.app'
end

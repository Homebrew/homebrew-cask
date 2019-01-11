cask 'classroom-assistant' do
  version '1.0.3'
  sha256 'b5ba0785d3f212b24098cfcd96b4a2d6e16b3aacc75ae732786c8670b7d62aca'

  url "https://github.com/education/classroom-assistant/releases/download/v#{version}/Classroom.Assistant-darwin-x64-#{version}.zip"
  appcast 'https://github.com/education/classroom-assistant/releases.atom'
  name 'GitHub Classroom Assistant'
  homepage 'https://classroom.github.com/assistant'

  app 'Classroom Assistant.app'
end

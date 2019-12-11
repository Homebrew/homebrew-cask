cask 'cave-story' do
  version '0.0.9'
  sha256 'cf0f73cbf797f3d24bf2aada970438e82c2e851ae262355286421d3464a18a3a'

  # nakiwo.com was verified as official when first introduced to the cask
  url "https://www.nakiwo.com/downloads/doukutsu#{version.dots_to_underscores}.dmg"
  appcast 'https://www.nakiwo.com/software.html'
  name 'Pixel Cave Story'
  name 'Doukutsu'
  name '洞窟物語'
  homepage 'https://www.cavestory.org/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'Doukutsu.app', target: 'Cave Story.app'
end

cask 'slippi' do
  version '2.2.0'
  sha256 'dcb9ce958b53a283894ef96b9ffeb159b680ca50c1adbddf2342884c7cd5ffe8'

  # github.com/project-slippi/Ishiiruka/ was verified as official when first introduced to the cask
  url "https://github.com/project-slippi/Ishiiruka/releases/download/v#{version}/FM-Slippi-#{version}-Mac.zip"
  appcast 'https://github.com/project-slippi/Ishiiruka/releases.atom'
  name 'Project Slippi'
  homepage 'https://slippi.gg/'

  app 'Dolphin.app', target: 'Slippi-Dolphin.app'
end

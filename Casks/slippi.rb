cask 'slippi' do
  version '2.2.0'
  sha256 :no_check

  url "https://github.com/project-slippi/Ishiiruka/releases/download/v#{version}/FM-Slippi-#{version}-Mac.zip"
  appcast 'https://github.com/project-slippi/Ishiiruka/releases.atom'
  name 'Project Slippi'
  homepage 'https://slippi.gg'

  app 'Dolphin.app', target: 'Slippi-Dolphin.app'
end

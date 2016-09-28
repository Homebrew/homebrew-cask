cask 'smartgit' do
  version '8.0.1'
  sha256 '422233ebb4bb9fbf2a22fc4106c31c90a498ecc2248f5856618c11f009d5591e'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'
  license :commercial

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"

  caveats do
    files_in_usr_local
  end
end

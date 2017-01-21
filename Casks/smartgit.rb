cask 'smartgit' do
  version '17'
  sha256 '6aa636471562f31f7b1c164910be2d039ce02674e682c2791a4c93475eb6fe27'

  url "https://www.syntevo.com/static/smart/download/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"

  caveats do
    files_in_usr_local
  end
end

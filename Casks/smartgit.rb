cask 'smartgit' do
  version '8.0.4'
  sha256 '2c116ded2903463bbf8c07dfc16ccc15e59f50f52f7e660e9457715f412045a6'

  url "https://www.syntevo.com/static/smart/download/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"

  caveats do
    files_in_usr_local
  end
end

cask 'smartgit' do
  version '7.1.4'
  sha256 '63f610165ac99f2f29ff27e38cd57d5129b5c4abd7965104f93e304539dc20b7'

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

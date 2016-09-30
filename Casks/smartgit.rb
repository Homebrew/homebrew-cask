cask 'smartgit' do
  version '8.0.2'
  sha256 'da85cb8cf21cd3bb72db529c0074e414b4c48c9545f84be2e2e246dc07ea5f2f'

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

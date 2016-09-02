cask 'smartgit' do
  version '8.0.0'
  sha256 '8fe6d2186a60bec057ae847dacf1665328f868eb2ef89943f1c13e3961392f4d'

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

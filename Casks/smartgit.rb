cask 'smartgit' do
  version '7.1.2'
  sha256 '73151f97ba9bb7b7d2f4b90c41f5eadcaf3e0b19824c33611431150aaa4862e8'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version.dots_to_underscores}.dmg"
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'
  license :commercial

  app 'SmartGit.app'
  binary 'SmartGit.app/Contents/MacOS/SmartGit'

  caveats do
    files_in_usr_local
  end
end

class Smartgithg < Cask
  version '6.0.4'
  sha256 '97b15bceb6af2e36a4e179c32895e9def864388d49ee82a6768547b68241d1b7'

  url 'http://www.syntevo.com/download/smartgithg/smartgithg-macosx-6_0_4.dmg'
  homepage 'http://www.syntevo.com'

  link 'SmartGitHg 6.app'
  binary 'SmartGitHg 6.app/Contents/MacOS/SmartGit'
  caveats do
    files_in_usr_local
  end
end

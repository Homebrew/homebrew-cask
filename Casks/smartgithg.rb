class Smartgithg < Cask
  url 'http://www.syntevo.com/download/smartgithg/smartgithg-macosx-6_0_0.dmg'
  homepage 'http://www.syntevo.com'
  version '6.0.0'
  sha256 'c169e268335035e16b7f87b6e429a7587e89f717b6cad681c0167307d204694c'
  link 'SmartGitHg 6.app'
  binary 'SmartGitHg 6.app/Contents/MacOS/SmartGit'
  caveats do
    files_in_usr_local
  end
end

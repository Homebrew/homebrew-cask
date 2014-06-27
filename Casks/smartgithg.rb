class Smartgithg < Cask
  version '6.0.3'
  sha256 '68d5b830895601278f3f57cf13fceba3423809840830ffcdf855728b5603816b'

  url 'http://www.syntevo.com/download/smartgithg/smartgithg-macosx-6_0_3.dmg'
  homepage 'http://www.syntevo.com'

  link 'SmartGitHg 6.app'
  binary 'SmartGitHg 6.app/Contents/MacOS/SmartGit'
  caveats do
    files_in_usr_local
  end
end

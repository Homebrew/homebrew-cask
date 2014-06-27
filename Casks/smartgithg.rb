class Smartgithg < Cask
  version '6.0.2'
  sha256 'ca43c8cb5d14f5b0ef74f28a5575a059c241bf6d5d18f38eb93052f2a283c40d'

  url 'http://www.syntevo.com/download/smartgithg/smartgithg-macosx-6_0_2.dmg'
  homepage 'http://www.syntevo.com'

  link 'SmartGitHg 6.app'
  binary 'SmartGitHg 6.app/Contents/MacOS/SmartGit'
  caveats do
    files_in_usr_local
  end
end

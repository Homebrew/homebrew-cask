class Smartgithg < Cask
  version '6.0.5'
  sha256 '4fc8d5db3b373a613cf6be348f001adc48249ac4b37ec03c64b61ce500e0637c'

  url 'http://www.syntevo.com/download/smartgithg/smartgithg-macosx-6_0_5.dmg'
  homepage 'http://www.syntevo.com'

  link 'SmartGitHg 6.app'
  binary 'SmartGitHg 6.app/Contents/MacOS/SmartGit'
  caveats do
    files_in_usr_local
  end
end

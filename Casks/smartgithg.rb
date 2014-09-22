class Smartgithg < Cask
  version '6.0.6'
  sha256 '25616f860cb03a9be9aa9ec21d2625673253c4dc702647d3c1f417f6b425fc96'

  url "http://www.syntevo.com/download/smartgithg/smartgithg-macosx-#{version.gsub('.', '_')}.dmg"
  homepage 'http://www.syntevo.com'

  app 'SmartGitHg 6.app'
  binary 'SmartGitHg 6.app/Contents/MacOS/SmartGit'
  caveats do
    files_in_usr_local
  end
end

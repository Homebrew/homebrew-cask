class Smartgithg < Cask
  version '6.0.7'
  sha256 '56b699343199296b10a84c38e327ebf560992c1a65b500d9493e0566152e0297'

  url "http://www.syntevo.com/download/smartgithg/smartgithg-macosx-#{version.gsub('.', '_')}.dmg"
  homepage 'http://www.syntevo.com'
  license :unknown

  app 'SmartGitHg 6.app'
  binary 'SmartGitHg 6.app/Contents/MacOS/SmartGit'

  postflight do
    system '/bin/rm', '-Rf', "#{destination_path}/SmartGitHg 6.app/Contents/Resources/Plugins/JRE"
  end

  caveats do
    files_in_usr_local
    puts 'This app requires the JRE (Java Runtime Environment) to be installed'
  end
end

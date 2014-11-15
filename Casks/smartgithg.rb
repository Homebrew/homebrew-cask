cask :v1 => 'smartgithg' do
  version '6.0.8'
  sha256 '6540fe06e4a23438afd5d397af48bb95b7bf8befbc0d6809b7fe16d418b0e03b'

  url "http://www.syntevo.com/download/smartgithg/smartgithg-macosx-#{version.gsub('.', '_')}.dmg"
  homepage 'http://www.syntevo.com'
  license :unknown

  app 'SmartGitHg 6.app'
  binary 'SmartGitHg 6.app/Contents/MacOS/SmartGit'
  caveats do
    files_in_usr_local
  end
end

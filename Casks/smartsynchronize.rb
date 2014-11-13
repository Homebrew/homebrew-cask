cask :v1 => 'smartsynchronize' do
  version '3.4'
  sha256 'f7d30bae37c835ea208ff60b5b99c2668e3406c06f1321862495a425a9389322'

  url "http://www.syntevo.com/download/smartsynchronize/smartsynchronize-macosx-#{version.gsub('.','_')}.dmg"
  homepage 'http://www.syntevo.com'
  license :unknown

  app "SmartSynchronize.app"
  binary "SmartSynchronize.app/Contents/MacOS/SmartSynchronize"
  caveats do
    files_in_usr_local
  end
end

cask :v1 => 'smartsynchronize' do
  version '3.4.1'
  sha256 '85ebf581932f81f109e83b29c1f03bd3d63c8397bbd970a7da4ff1db22ea2bce'

  url "http://www.syntevo.com/download/smartsynchronize/smartsynchronize-macosx-#{version.gsub('.','_')}.dmg"
  homepage 'http://www.syntevo.com/smartsynchronize/'
  license :commercial

  app "SmartSynchronize.app"
  binary "SmartSynchronize.app/Contents/MacOS/SmartSynchronize"
  caveats do
    files_in_usr_local
  end
end

cask 'functionflip' do
  version '2.2.3'
  sha256 '2c0613e173522b5baff5e321ab1ae551c8a4acc223a0901ef423671baded92af'

  url "http://kevingessner.com/public/downloads/FunctionFlip/#{version}/FunctionFlip.prefPane.zip"
  name 'FunctionFlip'
  homepage 'http://kevingessner.com/software/functionflip/'
  license :mit

  prefpane 'FunctionFlip.prefPane'
end

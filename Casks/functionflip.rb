cask :v1 => 'functionflip' do
  version '2.2.2'
  sha256 '66ac937e9ade979eca2d94881093ee5301bce660da1ace98e3c792da29b33c72'

  url "http://kevingessner.com/public/downloads/FunctionFlip/#{version}/FunctionFlip.prefPane.zip"
  name 'FunctionFlip'
  homepage 'http://kevingessner.com/software/functionflip/'
  license :mit

  prefpane 'FunctionFlip.prefPane'
end

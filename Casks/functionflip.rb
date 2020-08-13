cask "functionflip" do
  version "2.2.4"
  sha256 "429a07deef5767534dee2d99ab147242c41ef860c48d0dbf0c68f2687fbe9db4"

  url "http://kevingessner.com/public/downloads/FunctionFlip/#{version}/FunctionFlip.prefPane.zip"
  appcast "http://kevingessner.com/update/functionflip/"
  name "FunctionFlip"
  homepage "http://kevingessner.com/software/functionflip/"

  prefpane "FunctionFlip.prefPane"
end

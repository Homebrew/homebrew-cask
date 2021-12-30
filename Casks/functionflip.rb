cask "functionflip" do
  version "2.2.4"
  sha256 "429a07deef5767534dee2d99ab147242c41ef860c48d0dbf0c68f2687fbe9db4"

  url "http://kevingessner.com/public/downloads/FunctionFlip/#{version}/FunctionFlip.prefPane.zip"
  name "FunctionFlip"
  desc "Function key control"
  homepage "http://kevingessner.com/software/functionflip/"

  livecheck do
    url "http://kevingessner.com/update/functionflip/"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  prefpane "FunctionFlip.prefPane"
end

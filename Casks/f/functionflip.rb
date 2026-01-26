cask "functionflip" do
  version "2.2.4"
  sha256 "429a07deef5767534dee2d99ab147242c41ef860c48d0dbf0c68f2687fbe9db4"

  url "https://kevingessner.com/public/downloads/FunctionFlip/#{version}/FunctionFlip.prefPane.zip"
  name "FunctionFlip"
  desc "Function key control"
  homepage "https://kevingessner.com/software/functionflip/"

  deprecate! date: "2024-10-14", because: :unmaintained
  disable! date: "2025-10-14", because: :unmaintained

  prefpane "FunctionFlip.prefPane"

  caveats do
    requires_rosetta
  end
end

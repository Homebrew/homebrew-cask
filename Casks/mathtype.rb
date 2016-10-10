cask 'mathtype' do
  version '6.7'
  sha256 'f512b322c9b1e16c0f9c523ade1dc7f5e743768a2ac4d7fa37780abfbe05a861'

  url "https://www.dessci.com/en/dl/MTM#{version.no_dots}h_EN.pkg"
  name 'MathType'
  homepage 'https://www.dessci.com'

  installer manual: "MTM#{version.no_dots}h_EN.pkg"

  uninstall pkgutil: "com.dessci.mathtype#{version.no_dots}Hf.MathType.pkg",
            delete:  "/Applications/MathType #{version.major}"
end

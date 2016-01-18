cask 'mathtype' do
  version '6.7'
  sha256 'f512b322c9b1e16c0f9c523ade1dc7f5e743768a2ac4d7fa37780abfbe05a861'

  url "https://www.dessci.com/en/dl/MTM#{version.delete('.')}h_EN.pkg"
  name 'MathType'
  homepage 'https://www.dessci.com'
  license :commercial

  installer manual: "MTM#{version.delete('.')}h_EN.pkg"

  uninstall pkgutil: "com.dessci.mathtype#{version.delete('.')}Hf.MathType.pkg",
            delete:  "/Applications/MathType #{version.to_i}"
end

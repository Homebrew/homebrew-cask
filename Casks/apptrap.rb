class Apptrap < Cask
  version '1.2.1'
  sha256 'f9bbd424f91ec39e91482a0f0b6b590573e620b07e0e171d97259f77aadd9fac'

  url "http://onnati.net/apptrap/download/AppTrap#{version.gsub('.','-')}.zip"
  homepage 'http://onnati.net/apptrap'
  license :unknown

  prefpane 'AppTrap.prefPane'
end

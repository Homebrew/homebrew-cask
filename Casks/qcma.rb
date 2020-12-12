cask "qcma" do
  version "0.4.1,-1"
  sha256 "fc286229be41cbeb83fdb8800231f67d8f2f0d51c2fca07f09c7f6e9d4eecca7"

  # github.com/codestation/ was verified as official when first introduced to the cask
  url "https://github.com/codestation/qcma/releases/download/v#{version.before_comma}/Qcma_#{version.before_comma}#{version.after_comma}.dmg"
  appcast "https://github.com/codestation/qcma/releases.atom"
  name "Qcma"
  homepage "https://codestation.github.io/qcma/"

  app "Qcma.app"
end

cask "qcma" do
  version "0.4.1,1"
  sha256 "fc286229be41cbeb83fdb8800231f67d8f2f0d51c2fca07f09c7f6e9d4eecca7"

  url "https://github.com/codestation/qcma/releases/download/v#{version.csv.first}/Qcma_#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "github.com/codestation/"
  name "Qcma"
  homepage "https://codestation.github.io/qcma/"

  app "Qcma.app"

  caveats do
    discontinued
  end
end

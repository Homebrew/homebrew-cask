cask "qcma" do
  version "0.4.1,1"
  sha256 "fc286229be41cbeb83fdb8800231f67d8f2f0d51c2fca07f09c7f6e9d4eecca7"

  url "https://github.com/codestation/qcma/releases/download/v#{version.before_comma}/Qcma_#{version.before_comma}-#{version.after_comma}.dmg",
      verified: "github.com/codestation/"
  name "Qcma"
  homepage "https://codestation.github.io/qcma/"

  livecheck do
    url "https://github.com/codestation/qcma/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/Qcma_(\d+(?:\.\d+)*)-(\d+)\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "Qcma.app"

  caveats do
    discontinued
  end
end

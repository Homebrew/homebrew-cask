cask "inkstitch" do
  version "2.1.2"
  sha256 "655ce58e8cc94d50ba971d763a4522c70629ddf221e3ab6a92a4a386c5569cb2"

  name "Inkstitch"
  desc "Ink/Stitch: an Inkscape extension for machine embroidery design"
  if MacOS.version <= :high_sierra
    url "https://github.com/inkstitch/inkstitch/releases/download/v#{version}/inkstitch-v#{version}-sierra-osx.pkg", verified: "github.com/inkstitch/inkstitch"
    pkg "inkstitch-v#{version}-sierra-osx.pkg"
  else
    url "https://github.com/inkstitch/inkstitch/releases/download/v#{version}/inkstitch-v#{version}-osx.pkg", verified: "github.com/inkstitch/inkstitch"
    pkg "inkstitch-v#{version}-osx.pkg"
  end
  homepage "https://inkstitch.org/"

  livecheck do
    url "https://api.github.com/repos/inkstitch/inkstitch/releases/latest"
    regex(/^  "tag_name": "v(\d+\.\d+\.\d+)",$/)
  end

  depends_on cask: "inkscape"

  uninstall pkgutil: "org.inkstitch.installer"
end

cask "inkstitch" do
  version "2.1.2"

  if MacOS.version <= :high_sierra
    sha256 "3d6dfc5539c86840715e8edf03e79dee11fe2a85b91043a81a9c09ea050a75f7"
    url "https://github.com/inkstitch/inkstitch/releases/download/v#{version}/inkstitch-v#{version}-sierra-osx.pkg",
        verified: "github.com/inkstitch/inkstitch/"
  else
    sha256 "655ce58e8cc94d50ba971d763a4522c70629ddf221e3ab6a92a4a386c5569cb2"
    url "https://github.com/inkstitch/inkstitch/releases/download/v#{version}/inkstitch-v#{version}-osx.pkg",
        verified: "github.com/inkstitch/inkstitch/"
  end

  name "Inkstitch"
  desc "Inkscape extension for machine embroidery design"
  homepage "https://inkstitch.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on cask: "inkscape"
  depends_on macos: ">= :el_capitan"

  if MacOS.version <= :high_sierra
    pkg "inkstitch-v#{version}-sierra-osx.pkg"
  else
    pkg "inkstitch-v#{version}-osx.pkg"
  end

  preflight do
    system_command "/bin/mkdir",
                   args: ["-p", "#{ENV["HOME"]}/Library/Application Support" \
                                "/org.inkscape.Inkscape/config/inkscape/extensions"]
  end

  uninstall pkgutil: "org.inkstitch.installer",
            delete:  "~/Library/Application Support/org.inkscape.Inkscape/config/inkscape/extensions/inkstitch"

  zap trash: "~/Library/Application Support/inkstitch",
      rmdir: "~/Library/Application Support/org.inkscape.Inkscape/config/inkscape/extensions/"
end

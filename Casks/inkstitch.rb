cask "inkstitch" do
  version "2.2.0"

  if MacOS.version <= :high_sierra
    sha256 "3d6dfc5539c86840715e8edf03e79dee11fe2a85b91043a81a9c09ea050a75f7"
    url "https://github.com/inkstitch/inkstitch/releases/download/v#{version}/inkstitch-v#{version}-sierra-osx.pkg",
        verified: "github.com/inkstitch/inkstitch/"
  else
    sha256 "44706a29277ed14bee11c3bbdae748ac8b97d203b0a1232c278611f918ac1cfb"
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
                   args: ["-p", "#{Dir.home}/Library/Application Support" \
                                "/org.inkscape.Inkscape/config/inkscape/extensions"]
  end

  uninstall pkgutil: "org.inkstitch.installer",
            delete:  "~/Library/Application Support/org.inkscape.Inkscape/config/inkscape/extensions/inkstitch"

  zap trash: "~/Library/Application Support/inkstitch",
      rmdir: "~/Library/Application Support/org.inkscape.Inkscape/config/inkscape/extensions/"
end

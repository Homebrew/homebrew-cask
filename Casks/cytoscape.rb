cask "cytoscape" do
  version "3.9.0"
  sha256 "20624146f97e262405075bd58589930a3f76e6675736a9788d2ab84e2ad0dd0a"

  url "https://github.com/cytoscape/cytoscape/releases/download/#{version}/Cytoscape_#{version.dots_to_underscores}_macos.dmg",
      verified: "github.com/cytoscape/cytoscape/"
  name "Cytoscape"
  desc "Open-source platform for network analysis and visualization"
  homepage "https://cytoscape.org/"

  installer script: {
    executable: "Cytoscape Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  uninstall script: {
    executable: "#{appdir}/Cytoscape_v#{version}/Cytoscape Uninstaller.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
    sudo:       true,
  }

  caveats do
    depends_on_java "11"
  end
end

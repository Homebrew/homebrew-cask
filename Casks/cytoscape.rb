cask "cytoscape" do
  version "3.8.2"
  sha256 "3597f06c835285b017c29778cdc9e5ba2279475a0c78d60e82fbda6f0c53624e"

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
  }

  caveats do
    depends_on_java "11"
  end
end

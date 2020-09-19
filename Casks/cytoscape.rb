cask "cytoscape" do
  version "3.8.1"
  sha256 "b0d1caba42c1c8d09fb19c288de82a11a55c68ae15d7cdcb3961aeab1d408a7e"

  # github.com/cytoscape/cytoscape/ was verified as official when first introduced to the cask
  url "https://github.com/cytoscape/cytoscape/releases/download/#{version}/Cytoscape_#{version.dots_to_underscores}_macos.dmg"
  appcast "https://github.com/cytoscape/cytoscape/releases.atom"
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

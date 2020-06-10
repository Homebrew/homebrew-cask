cask 'cytoscape' do
  version '3.8.0'
  sha256 '4986f3b754a36610c62b3a015d33874cf0e5e01720dcca2aa397b573e1646d94'

  # github.com/cytoscape/cytoscape/ was verified as official when first introduced to the cask
  url "https://github.com/cytoscape/cytoscape/releases/download/#{version}/Cytoscape_#{version.dots_to_underscores}_macos.dmg"
  appcast 'https://github.com/cytoscape/cytoscape/releases.atom'
  name 'Cytoscape'
  homepage 'https://cytoscape.org/'

  installer script: {
                      executable: 'Cytoscape Installer.app/Contents/MacOS/JavaApplicationStub',
                      args:       ['-q'],
                    }

  uninstall script: {
                      executable: "#{appdir}/Cytoscape_v#{version}/Cytoscape Uninstaller.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-q'],
                    }

  caveats do
    depends_on_java
  end
end

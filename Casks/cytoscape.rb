cask 'cytoscape' do
  version '3.7.2'
  sha256 '8bb131921f7a030b4f06156d1d6e67d132a41e6febca6e48f2386df8ac028f4d'

  # github.com/cytoscape/cytoscape was verified as official when first introduced to the cask
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

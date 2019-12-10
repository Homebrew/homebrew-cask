cask 'celldesigner' do
  version '4.4.2'
  sha256 'b23708f82842f4c138c2ba8d2ecd7d94942c9cedf05bcf6cc6b683e11305209c'

  url "http://www.systems-biology.org/download/CellDesigner-#{version}-osx-installer.dmg"
  appcast 'http://systems-biology.org/software/celldesigner/'
  name 'CellDesigner'
  homepage 'http://systems-biology.org/software/celldesigner/'

  installer script: {
                      executable: "#{staged_path}/CellDesigner-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
                      args:       ['--mode', 'unattended'],
                    }

  uninstall script: {
                      executable: "/Applications/CellDesigner#{version}/uninstall.app/Contents/MacOS/installbuilder.sh",
                      args:       ['--mode', 'unattended'],
                    },
            delete: "/Applications/CellDesigner#{version}"

  zap trash: [
               '~/.celldesigner',
               '~/.copasi',
               '~/.sbw',
               '~/.oracle_jre_usage',
             ]

  caveats do
    depends_on_java '6+'
  end
end

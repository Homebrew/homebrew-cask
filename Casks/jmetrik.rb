cask 'jmetrik' do
  version '4.1.1'
  sha256 'a6b7fa7870232f9bf615704c810c8046b3b5ebc02ec3a920fb96e0f255b61321'

  url "https://itemanalysis.com/jmetrik/v#{version.dots_to_underscores}/jmetrik_macos_#{version.dots_to_underscores}_java7.dmg"
  name 'jMetrik'
  homepage 'http://itemanalysis.com/'

  installer script: {
                      executable: 'jMetrik Installer.app/Contents/MacOS/JavaApplicationStub',
                      # For future Cask maintainers, if any of these variables
                      # change in future versions, you can run the installer
                      # manually and then check the values in the following
                      # file generated by the installation:
                      #   /Applications/jmetrik/.install4j/response.varfile
                      args:       [
                                    '-q', # Silent mode
                                    '-VcreateDesktopLinkAction$Boolean=false', # Do not create a desktop icon
                                    '-VexecutionLauncherAction$Boolean=false', # Do not launch jMetrik after installing
                                    "-Vsys.installationDir=#{appdir}/jMetrik", # Install to subdirectory of /Applications
                                  ],
                      sudo:       true,
                    }

  uninstall script: {
                      executable: "#{appdir}/jMetrik/jMetrik Uninstaller.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-q'],
                      sudo:       true,
                    }

  zap trash: '~/jmetrik'

  caveats do
    depends_on_java '7+'
  end
end

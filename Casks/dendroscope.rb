cask 'dendroscope' do
  version '3.6.3'
  sha256 '2b9557232149da9d6d2fa0d07bd98b21836141e2759ca92986e5d7a3e21d0bde'

  url "https://ab.inf.uni-tuebingen.de/data/software/dendroscope3/download/Dendroscope_macos_#{version.dots_to_underscores}.dmg"
  name 'Dendroscope'
  homepage 'https://ab.inf.uni-tuebingen.de/software/dendroscope/welcome.html'

  preflight do
    system_command "#{staged_path}/Dendroscope Installer.app/Contents/MacOS/JavaApplicationStub", args: ['-q']
  end

  uninstall_preflight do
    system_command "#{appdir}/Dendroscope/Dendroscope Uninstaller.app/Contents/MacOS/JavaApplicationStub", args: ['-q']
  end

  caveats do
    depends_on_java
  end
end

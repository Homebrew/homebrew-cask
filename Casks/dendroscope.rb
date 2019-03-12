cask 'dendroscope' do
  version '3.5.10'
  sha256 '6fcf8a60e481f6880bf05966013cea02ebb512c0dbc0505d4c7759c129e7ce2c'

  # ab.inf.uni-tuebingen.de/data/software/dendroscope3 was verified as official when first introduced to the cask
  url "https://ab.inf.uni-tuebingen.de/data/software/dendroscope3/download/Dendroscope_macos_#{version.dots_to_underscores}.dmg"
  appcast 'https://ab.inf.uni-tuebingen.de/data/software/dendroscope3/download/release_notes.txt'
  name 'Dendroscope'
  homepage 'http://dendroscope.org/'

  app 'Dendroscope.app'

  preflight do
    system_command "#{staged_path}/Dendroscope Installer.app/Contents/MacOS/JavaApplicationStub", args: ['-q', '-dir', staged_path.to_s]
  end

  uninstall_preflight do
    system_command "#{staged_path}/Dendroscope Uninstaller.app/Contents/MacOS/JavaApplicationStub", args: ['-q']
  end

  caveats do
    depends_on_java
  end
end

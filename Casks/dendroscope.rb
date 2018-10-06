cask 'dendroscope' do
  version '3.5.9'
  sha256 '63d3f42a7143710d40c2b5d4cf9a80e98820f92bf43eb16f4617dcf2d0f5b6c6'

  # ab.inf.uni-tuebingen.de/data/software/dendroscope3 was verified as official when first introduced to the cask
  url "http://ab.inf.uni-tuebingen.de/data/software/dendroscope3/download/Dendroscope_macos_#{version.dots_to_underscores}.dmg"
  appcast 'http://dendroscope.org/'
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

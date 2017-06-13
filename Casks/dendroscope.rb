cask 'dendroscope' do
  version '3.5.7'
  sha256 '9da20a38eff7588c19cb7521fc10fea0a1d3bfe038e1c11774018659ac0d7eca'

  # ab.inf.uni-tuebingen.de/data/software/dendroscope3 was verified as official when first introduced to the cask
  url "http://ab.inf.uni-tuebingen.de/data/software/dendroscope3/download/Dendroscope_macos_#{version.dots_to_underscores}.dmg"
  appcast 'http://dendroscope.org/',
          checkpoint: '55916803e86c3829aeb42795a4c79ce823376aa4a0e3b15bcd917a2bdf935cc4'
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

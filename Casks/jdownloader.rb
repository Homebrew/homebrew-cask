cask :v1 => 'jdownloader' do
  version :latest
  sha256 :no_check

  if MacOS.release <= :snow_leopard
    url 'http://installer.jdownloader.org/JD2Setup_10_6orlower.dmg'
  else
    url 'http://installer.jdownloader.org/JD2Setup.dmg'
  end

  name 'JDownloader 2'
  homepage 'http://jdownloader.org/'
  license :gpl

  preflight do
    system "\"#{staged_path}/JDownloader Installer.app/Contents/MacOS/JavaApplicationStub\" " \
           "-dir \"#{staged_path}\" " \
           '-q ' \
           '-Dinstall4j.suppressStdout=true ' \
           '-Dinstall4j.debug=false ' \
           '-VcreateDesktopLinkAction\$Boolean=false ' \
           '-VaddToDockAction\$Boolean=false ' \
           '> /dev/null 2>&1'
  end

  caveats <<-EOS.undent
    #{token} requires Java 6+, you can install the latest Java using

      brew cask install java
  EOS

  app 'JDownloader 2.0/JDownloader2.app'
end

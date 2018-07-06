cask 'jdownloader' do
  version :latest
  sha256 :no_check

  url 'http://installer.jdownloader.org/clean/JD2Setup.dmg',
      user_agent: :fake
  name 'JDownloader 2'
  homepage 'http://jdownloader.org/'

  auto_updates true

  preflight do
    system_command "#{staged_path}/JDownloader Installer.app/Contents/MacOS/JavaApplicationStub",
                   args:         [
                                   '-dir', staged_path.to_s,
                                   '-q',
                                   '-Dinstall4j.suppressStdout=true',
                                   '-Dinstall4j.debug=false',
                                   '-VcreateDesktopLinkAction$Boolean=false',
                                   '-VaddToDockAction$Boolean=false'
                                 ],
                   print_stderr: false
  end

  uninstall delete: '/Applications/JDownloader2.app'

  caveats do
    depends_on_java '8'
  end
end

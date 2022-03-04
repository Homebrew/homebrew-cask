cask "jdownloader" do
  version "45556"
  sha256 :no_check

  url "http://installer.jdownloader.org/clean/JD2Setup.dmg",
      user_agent: :fake
  name "JDownloader"
  desc "Download manager"
  homepage "https://jdownloader.org/"

  livecheck do
    url "https://svn.jdownloader.org/build.php"
    regex(/Revision:.*?(\d+)[\s<]/i)
  end

  auto_updates true

  preflight do
    system_command "#{staged_path}/JDownloader Installer.app/Contents/MacOS/JavaApplicationStub",
                   args:         [
                     "-dir", appdir.to_s,
                     "-q",
                     "-Dinstall4j.suppressStdout=true",
                     "-Dinstall4j.debug=false",
                     "-VcreateDesktopLinkAction$Boolean=false",
                     "-VaddToDockAction$Boolean=false"
                   ],
                   print_stderr: false
  end

  uninstall delete: [
    "#{appdir}/JDownloader 2.0",
    "#{appdir}/JDownloader2.app",
  ]

  zap trash: "~/Library/Preferences/org.jdownloader.launcher.plist"

  caveats do
    depends_on_java "8"
  end
end

cask "jdownloader" do
  arch arm: "aarch64", intel: "amd64"

  version :latest
  sha256 :no_check

  url "https://installer.jdownloader.org/homebrew/latest/JDownloader2Setup_macos-#{arch}_v21.dmg"
  name "JDownloader"
  desc "Download manager"
  homepage "https://jdownloader.org/"

  installer script: {
    executable:   "JDownloader 2 Installer.app/Contents/MacOS/JavaApplicationStub",
    args:         [
      "-dir", appdir.to_s,
      "-q",
      "-Dinstall4j.suppressStdout=true",
      "-Dinstall4j.debug=false",
      "-VcreateDesktopLinkAction$Boolean=false",
      "-VaddToDockAction$Boolean=false"
    ],
    print_stderr: false,
  }

  uninstall delete: [
    "#{appdir}/JDownloader 2",
    "#{appdir}/JDownloader2.app",
  ]

  zap trash: "~/Library/Preferences/org.jdownloader.launcher.plist"
end

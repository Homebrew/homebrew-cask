cask "jdownloader" do
  arch = Hardware::CPU.intel? ? "amd64" : "aarch64"

  version "46316"

  if Hardware::CPU.intel?
    sha256 "c7d7ba17e80881c31023b7c94f6bffab4ef9a6103f0423d08cfd909be2fe859e"
  else
    sha256 "f0f8a1fa0e0de3c85a1a8d10030e2ccb9a04ed2be7818490500f99b77b29e6da"
  end

  url "https://installer.jdownloader.org/homebrew/JDownloader2Setup_macos-#{arch}_v17_0_3.dmg"
  name "JDownloader"
  desc "Download management tool"
  homepage "https://jdownloader.org/"

  livecheck do
    url "https://svn.jdownloader.org/build.php"
    regex(/Revision:.*?(\d+)[\s<]/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  preflight do
    system_command "#{staged_path}/JDownloader 2 Installer.app/Contents/MacOS/JavaApplicationStub",
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
end

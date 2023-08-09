cask "thinkorswim" do
  version :latest
  sha256 :no_check

  url "https://mediaserver.thinkorswim.com/installer/InstFiles/thinkorswim_installer.dmg"
  name "thinkDesktop"
  desc "Desktop client for TD Ameritrade trading platform"
  homepage "https://mediaserver.thinkorswim.com/installer/install.html#macosx"

  livecheck do
    skip "unversioned Java application"
  end

  # Installation options are stored in `.install4j/response.varfile` of the installation directory.
  installer script: {
    executable: "thinkorswim Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       [
      "-q",
      "-Dinstall4j.suppressStdout=true",
      "-Dinstall4j.debug=false",
      "-Vcreate_icon$Boolean=false",
      "-VexecuteLauncherAction$Boolean=false",
      "-VinstallFor=all",
      "-Vsys.installationDir=#{appdir}/thinkorswim",
    ],
  }

  uninstall script: {
    executable: "#{appdir}/thinkorswim/thinkorswim Uninstaller.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  zap trash: "~/.thinkorswim"
end

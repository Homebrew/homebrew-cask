cask "rew" do
  os macos: "macos", linux: "linux"
  bundle_type = on_system_conditional linux: "AMD64_"

  version "5.31.3"
  sha256 arm:          "8f1c6b9ecae27b2f60ff3dfc803920607e42f312342d9d5472c2e38b55b699f5",
         intel:        "8f1c6b9ecae27b2f60ff3dfc803920607e42f312342d9d5472c2e38b55b699f5",
         x86_64_linux: "213e387b3ff4d7d3e5807550de30b4dee6659672f2b055264017f816830b4533"

  on_macos do
    url "https://www.roomeqwizard.com/installers/REW_#{os}_#{version.dots_to_underscores}.dmg"

    installer script: {
      executable: "#{staged_path}/REW Installer.app/Contents/MacOS/JavaApplicationStub",
      args:       [
        "-q",
        "-Dinstall4j.debug=false",
        "-Dinstall4j.suppressStdout=true",
        "-Vsys.symlinkDir=#{HOMEBREW_PREFIX}/bin",
        "-Vsys.installationDir=#{appdir}/REW",
        "-VaddToDockAction$Boolean=false",
        "-VcreateDesktopLinkAction$Boolean=false",
      ],
    }

    uninstall script: {
      executable: "#{appdir}/REW/REW Uninstaller.app/Contents/MacOS/JavaApplicationStub",
      args:       [
        "-q",
        "-Dinstall4j.debug=false",
        "-Dinstall4j.suppressStdout=true",
      ],
    }

    zap trash: [
      "~/Library/Logs/REW",
      "~/Library/Preferences/com.install4j.4549-9647-2313-4375.uninstaller.plist",
      "~/Library/Saved Application State/roomeqwizard.launcher.savedState",
    ]
  end
  on_linux do
    url "https://www.roomeqwizard.com/installers/REW_#{os}_AMD64_#{version.dots_to_underscores}.sh"

    depends_on arch: :x86_64

    installer script: {
      executable:   "REW_#{os}_AMD64_#{version.dots_to_underscores}.sh",
      args:	        [
        "-q",
        "-Dinstall4j.suppressStdout=true",
        "-Dinstall4j.debug=false",
        "-Vopengl$Boolean=true",
        "-Vsys.symlinkDir=#{HOMEBREW_PREFIX}/bin",
        "-Vsys.installationDir=#{appdir}/REW",
        "-VexecutionLauncherAction$Boolean=false",
      ],
      print_stderr: false,
    }

    uninstall script: {
      executable:   "#{appdir}/REW/uninstall",
      args:	        [
        "-q",
        "-Dinstall4j.suppressStdout=true",
        "-Dinstall4j.debug=false",
      ],
      print_stderr: false,
    }

    zap trash: [
      "~/.java/.userPrefs/room eq wizard",
      "~/REW",
    ]
  end

  name "REW"
  desc "Record, visualise and measure audio"
  homepage "https://www.roomeqwizard.com/"

  livecheck do
    url "https://www.roomeqwizard.com/installers"
    regex(/href=.*?REW[._-]#{os}[._-]#{bundle_type}v?(\d+(?:[._-]\d+)+)\.(?:dmg|sh)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match.first.tr("_", ".") }
    end
  end

  auto_updates true
end

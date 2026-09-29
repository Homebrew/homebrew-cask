cask "rew" do
  os macos: "macos", linux: "linux"

  version "5.31.3"
  sha256 arm:          "8f1c6b9ecae27b2f60ff3dfc803920607e42f312342d9d5472c2e38b55b699f5",
         intel:        "8f1c6b9ecae27b2f60ff3dfc803920607e42f312342d9d5472c2e38b55b699f5",
         arm64_linux:  "a9a1a4295a22049d9459528032a6eea8d162e8519c6e533101b63085fffbd426",
         x86_64_linux: "a9a1a4295a22049d9459528032a6eea8d162e8519c6e533101b63085fffbd426"

  on_macos do
    url "https://www.roomeqwizard.com/installers/REW_#{os}_#{version.dots_to_underscores}.dmg"

    installer script: {
      executable: "REW Installer.app/Contents/MacOS/JavaApplicationStub",
      args:       [
        "-q",
        "-Dinstall4j.debug=false",
        "-Dinstall4j.suppressStdout=true",
        "-VaddToDockAction$Boolean=false",
        "-VcreateDesktopLinkAction$Boolean=false",
      ],
    }

    uninstall script: {
      executable: "/Applications/REW/REW Uninstaller.app/Contents/MacOS/JavaApplicationStub",
      args:       [
        "-q",
        "-Dinstall4j.debug=false",
        "-Dinstall4j.suppressStdout=true",
      ],
    }

    zap delete: "/Library/Preferences/com.install4j.installations.plist",
        trash:  [
          "~/Library/Logs/REW",
          "~/Library/Preferences/com.install4j.4549-9647-2313-4375.uninstaller.plist",
          "~/Library/Preferences/com.install4j.installations.plist",
          "~/Library/Saved Application State/roomeqwizard.launcher.savedState",
        ]
  end
  on_linux do
    url "https://www.roomeqwizard.com/installers/REW_#{os}_no_jre_#{version.dots_to_underscores}.sh"

    installer script: {
      executable: "REW_#{os}_no_jre_#{version.dots_to_underscores}.sh",
      args:	      [
        "-q",
        "-Dinstall4j.suppressStdout=true",
        "-Dinstall4j.debug=false",
        "-Vsys.installationDir=#{appdir}/REW",
        "-VexecutionLauncherAction$Boolean=false",
      ],
    }

    uninstall script: {
      executable: "#{appdir}/REW/uninstall",
      args:	      [
        "-q",
        "-Dinstall4j.suppressStdout=true",
        "-Dinstall4j.debug=false",
      ],
    }

    zap trash: [
      "~/.java/.userPrefs/room eq wizard",
      "~/install4joutput.log",
      "~/REW",
    ]

    caveats do
      depends_on_java "8"
    end
  end

  name "rew"
  desc "Record, visualize and measure audio"
  homepage "https://www.roomeqwizard.com/"

  livecheck do
    url "https://www.roomeqwizard.com/installers"
    regex(/REW_macos_(\d+(?:[._-]\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match.first.tr("_", ".") }
    end
  end

  auto_updates true
end

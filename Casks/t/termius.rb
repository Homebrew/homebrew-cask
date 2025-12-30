cask "termius" do
  version "9.34.8"

  name "Termius"
  desc "SSH client"
  homepage "https://www.termius.com/"

  on_macos do
    arch arm: "-arm64"
    sha256 :no_check

    url "https://autoupdate.termius.com/mac#{arch}/Termius.dmg"

    livecheck do
      url "https://autoupdate.termius.com/mac/latest-mac.yml"
      strategy :electron_builder
    end

    auto_updates true

    app "Termius.app"

    uninstall delete: "/Library/Preferences/com.termius-dmg.mac.plist"

    zap trash: [
      "~/.termius",
      "~/Library/Application Support/Termius",
      "~/Library/Logs/Termius",
      "~/Library/Saved Application State/com.termius-dmg.mac.savedState",
    ]
  end

  on_linux do
    sha256 "5f383906fd20a910e73148a98f6c71e12fe58f921994c8ddda5842d182c01f24"

    url "https://autoupdate.termius.com/linux/Termius.deb"

    livecheck do
      url "https://autoupdate.termius.com/linux/latest-linux.yml"
      strategy :electron_builder
    end

    depends_on arch: :x86_64

    container type: :naked

    # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
    termius_dir = "#{staged_path}/opt/Termius"
    shimscript = "#{staged_path}/termius.wrapper.sh"
    desktop_file = "#{staged_path}/termius.desktop"
    icon_file = "#{staged_path}/usr/share/icons/hicolor/512x512/apps/termius-app.png"

    binary shimscript, target: "termius"
    artifact desktop_file, target: "~/.local/share/applications/termius.desktop"
    artifact icon_file, target: "~/.local/share/icons/hicolor/512x512/apps/termius-app.png"

    preflight do
      system_command "ar",
                     args:  ["-x", "#{staged_path}/Termius.deb"],
                     chdir: staged_path

      system_command "tar",
                     args:  ["-xf", "#{staged_path}/data.tar.xz"],
                     chdir: staged_path

      File.write shimscript, <<~EOS
        #!/bin/sh
        exec '#{termius_dir}/termius-app' "$@"
      EOS
      FileUtils.chmod(0755, shimscript)

      File.write desktop_file, <<~EOS
        [Desktop Entry]
        Name=Termius
        Exec=#{HOMEBREW_PREFIX}/bin/termius %U
        Terminal=false
        Type=Application
        Icon=#{Dir.home}/.local/share/icons/hicolor/512x512/apps/termius-app.png
        StartupWMClass=Termius
        Comment=SSH client
        MimeType=x-scheme-handler/termius;
        Categories=Network;Utility;
      EOS
    end

    zap trash: "~/.termius"
  end
end

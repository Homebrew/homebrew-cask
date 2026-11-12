cask "genoffice" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.13.18"
  sha256 arm:          "693c690caa50082700520e86f3690af9f35d123f7546ce328e2202b82b8f6b2f",
         intel:        "f157deb95ad15bd1808792f7ce75167697bce53a04f9378432cac0465bbbf605",
         x86_64_linux: "edd687d50edcaee44b1b30c35feb671a313401cb6df26963e5897b99228d1871"

  on_macos do
    auto_updates true
    depends_on macos: :monterey

    app "GenOffice.app"
    binary "#{appdir}/GenOffice.app/Contents/Resources/cli/genoffice"

    uninstall launchctl: "application.com.genoffice.app.*",
              quit:      "com.genoffice.app"

    zap trash: [
          "~/.genoffice",
          "~/.local/bin/genoffice",
          "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.genoffice.app.sfl*",
          "~/Library/Application Support/GenOffice",
          "~/Library/Preferences/com.genoffice.app.plist",
        ],
        rmdir: "~/Documents/GenOffice"
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "GenOffice-#{version}.AppImage", target: "GenOffice.AppImage"

    zap trash: [
          "~/.config/GenOffice",
          "~/.genoffice",
          "~/.local/bin/genoffice",
        ],
        rmdir: "~/Documents/GenOffice"
  end

  url "https://github.com/genspark-ai/genoffice/releases/download/v#{version}/GenOffice-#{version}#{arch}.#{url_end}"
  name "GenOffice"
  desc "Open-source AI office suite"
  homepage "https://genoffice.ai/"
end

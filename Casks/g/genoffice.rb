cask "genoffice" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.13.886"
  sha256 arm:          "e9b3ca84391547c39c4283bd82c8e45f3cfd284f62c5dd51df04d27eab791c72",
         intel:        "8d141547e082979449b8ea0e2044f23074ae15335b4ab1d0ff15281923c6f3e9",
         x86_64_linux: "e2a15b38813793538987de94b5a450f017c6f08b21a46b8e38eb2ffdced0c5e3"

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

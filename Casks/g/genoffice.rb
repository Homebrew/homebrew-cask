cask "genoffice" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.13.615"
  sha256 arm:          "9ef7cad7bdb2c67925c5d46c783ac19cdc18560a7350f399d5cc22029a7dfe7e",
         intel:        "53346e96607d40026ede61682af255349815d6283afe50a25b85b97082b1ac1c",
         x86_64_linux: "78b9cee9040ee19be233821b025ea28e0d565628f2f50a0abb5888c71dee8ca6"

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

cask "genoffice" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.11.829"
  sha256 arm:          "80ef4256790b77e60d56f2a795ac191cd2bbc328dd6774c38a15bcf69214613e",
         intel:        "12cdc1dbe5a574a3bb52cd56080df39391fe314067443027e85d4716f5c275a3",
         x86_64_linux: "a8b7e6dc38fb093dd28925d5e2d967c58b6ff27ff49a0a3bf757bdeaf2800491"

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
      "~/Library/Application Support/GenOffice",
      "~/Library/Preferences/com.genoffice.app.plist",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "GenOffice-#{version}.AppImage", target: "GenOffice.AppImage"
  end

  url "https://github.com/genspark-ai/genoffice/releases/download/v#{version}/GenOffice-#{version}#{arch}.#{url_end}"
  name "GenOffice"
  desc "Open-source AI office suite"
  homepage "https://genoffice.ai/"
end

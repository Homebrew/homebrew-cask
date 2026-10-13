cask "genoffice" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.11.727"
  sha256 arm:          "7d638370961dea960a6adfbd7b1ae7c83c0cb5c07a0962409e2cb91f5277b235",
         intel:        "9a4f7aa713728c6a2eb5caf15bb15ba185b3606b578d88e3d6e13b24f3212957",
         x86_64_linux: "cb564eace332424243f6d391fbeb81c186e5f5605accb896de31dae1ebc86144"

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

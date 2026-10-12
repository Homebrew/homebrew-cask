cask "genoffice" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.11.564"
  sha256 arm:          "69e4c794538a9ea50250ca8d5596a1bc4b73198d981a460202e994c8e24d8817",
         intel:        "70b16a8f3acbe410dd2358dfe7a18c8c8f6320186764e86988a1218cdb0b2ad1",
         x86_64_linux: "64111c0aa2d65065b232c2fd00434da74781a7c35d84543ba181ace3599ad7cc"

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

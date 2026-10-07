cask "genoffice" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.11.505"
  sha256 arm:          "9e23ec7bb1b2c7577fdd0af5f6c2dff4903d2d98318f88244432fd2ddbbec245",
         intel:        "bbd5bcd60012d640284e72d6b99bdb2e92800fc41f02b31d15577ea439be9f06",
         x86_64_linux: "236b095feef6abf9498a44499bcd5439f9f8edfa68904d7123e63189dc64635e"

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

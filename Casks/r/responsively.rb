cask "responsively" do
  arch arm: "-arm64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.18.0"
  sha256 arm:          "870ef97ae7b23758411841f0c35058ddd36ba2dce51b1f8a48063664dc12d92b",
         intel:        "580a2f680bf438456901d5664ddea08bc3291c3ce0ded67ce64234444c1c9f6b",
         arm64_linux:  "6084fce99110c9942d574f7064585ee96f4233d6115cc829be8dcc89a53a4849",
         x86_64_linux: "1711a5b7d0267bade9c04a7eeb1d962ce9515484dbfd054a86bff7e262823ba7"

  on_macos do
    app "ResponsivelyApp.app"

    zap trash: [
      "~/Library/Application Support/ResponsivelyApp",
      "~/Library/Preferences/app.responsively.plist",
    ]
  end
  on_linux do
    app_image "ResponsivelyApp-#{version}#{arch}.AppImage", target: "ResponsivelyApp.AppImage"

    zap trash: "~/.config/ResponsivelyApp"
  end

  url "https://github.com/responsively-org/responsively-app-releases/releases/download/v#{version}/ResponsivelyApp-#{version}#{arch}.#{url_end}"
  name "Responsively"
  desc "Modified browser that helps in responsive web development"
  homepage "https://responsively.app/"

  auto_updates true
end

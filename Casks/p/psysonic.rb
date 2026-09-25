cask "psysonic" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.55.0"
  sha256 arm:          "86645d3669edd884c4532b5e277fc86867bd6ee2d54efe51af9db7ec90c86f93",
         intel:        "48135091bdc9690b2c4be90b5a449bbeca166ab59ebef262f72f38987872d50c",
         x86_64_linux: "71995df1210e8e469b81b1227a34387f00a03871037907d8ca876bb6fa841efc"

  on_macos do
    auto_updates true

    app "Psysonic.app"

    uninstall quit: "dev.psysonic.player"

    zap trash: [
      "~/Library/Application Support/dev.psysonic.player",
      "~/Library/Caches/dev.psysonic.player",
      "~/Library/Preferences/dev.psysonic.player.plist",
      "~/Library/Saved Application State/dev.psysonic.player.savedState",
      "~/Library/WebKit/dev.psysonic.player",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Psysonic_#{version}_#{arch}.AppImage", target: "Psysonic.AppImage"
  end

  url "https://github.com/Psysonic/psysonic/releases/download/app-v#{version}/Psysonic_#{version}_#{arch}.#{url_end}"
  name "Psysonic"
  desc "Desktop client for Navidrome and other Subsonic-compatible servers"
  homepage "https://www.psysonic.de/"
end

cask "espanso" do
  os macos: "Espanso-Mac-Universal.dmg", linux: "Espanso-X11.AppImage"

  version "2.4.1"

  on_macos do
    sha256 "e6aee2d9446d7625e57dafc6613add21fc7c9f709ba42f08b5ada844c6f7110a"

    depends_on macos: :big_sur

    app "Espanso.app"
    binary "#{appdir}/Espanso.app/Contents/MacOS/espanso"

    zap trash: [
      "~/Library/Application Support/espanso",
      "~/Library/Caches/espanso",
      "~/Library/LaunchAgents/com.federicoterzi.espanso.plist",
      "~/Library/Preferences/com.federicoterzi.espanso.plist",
      "~/Library/Preferences/espanso",
      "~/Library/Preferences/espanso.plist",
      "~/Library/Saved Application State/com.federicoterzi.espanso.savedState",
    ]
  end
  on_linux do
    sha256 "58b1b9c270c2416f3c6cb9069dfbcfb882d82de3369cf675861102936fc5f540"

    depends_on arch: :x86_64

    app_image "Espanso-X11.AppImage", target: "Espanso.AppImage"

    zap trash: [
      "~/.cache/espanso",
      "~/.config/espanso",
      "~/.local/share/espanso",
    ]
  end

  url "https://github.com/espanso/espanso/releases/download/v#{version}/#{os}"
  name "Espanso"
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://espanso.org/"

  livecheck do
    url :url
    strategy :github_latest
  end
end

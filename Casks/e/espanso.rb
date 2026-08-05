cask "espanso" do
  url_end = on_system_conditional macos: "Mac-Universal.dmg", linux: "X11.AppImage"

  version "2.4.0"

  on_macos do
    sha256 "aaf81d7573db785e5447b867e0f2f1d6f061ea9fa1756fda02f21b0402407669"

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
    sha256 "42290d0ef9ee4e9ef198e309263f6b8d5478592e8d2792825e49d27c04281048"

    depends_on arch: :x86_64

    app_image "Espanso-X11.AppImage", target: "Espanso.AppImage"
  end

  url "https://github.com/espanso/espanso/releases/download/v#{version}/Espanso-#{url_end}",
      verified: "github.com/espanso/espanso/"
  name "Espanso"
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://espanso.org/"

  livecheck do
    url :url
    strategy :github_latest
  end
end

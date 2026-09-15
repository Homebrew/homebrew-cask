cask "fontra-pak" do
  version "2026.9.0"
  sha256 "c3e916f833e2ff2dacbfc982f0665a22691c19b0a58a0405281a5c2396240b67"

  url "https://github.com/fontra/fontra-pak/releases/download/#{version}/FontraPak-macOS.dmg"
  name "Fontra Pak"
  desc "Browser-based font editor"
  homepage "https://fontra.xyz/"

  depends_on :macos

  app "Fontra Pak.app"

  uninstall quit: "xyz.fontra.fontra-pak"

  zap trash: [
    "~/Library/Preferences/com.xyz-fontra.FontraPak.plist",
    "~/Library/Preferences/xyz.fontra.fontra-pak.plist",
  ]
end

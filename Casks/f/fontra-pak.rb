cask "fontra-pak" do
  version "2026.1.3"
  sha256 "55671915477237843e00d7b5f025e70cd65f1a92f78429cb8fa1def418af16e9"

  url "https://github.com/fontra/fontra-pak/releases/download/#{version}/FontraPak-macOS.dmg",
      verified: "github.com/fontra/fontra-pak/"
  name "Fontra Pak"
  desc "Browser-based font editor"
  homepage "https://fontra.xyz/"

  depends_on macos: ">= :big_sur"

  app "Fontra Pak.app"

  uninstall quit: "xyz.fontra.fontra-pak"

  zap trash: [
    "~/Library/Preferences/com.xyz-fontra.FontraPak.plist",
    "~/Library/Preferences/xyz.fontra.fontra-pak.plist",
  ]
end

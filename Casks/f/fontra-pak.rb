cask "fontra-pak" do
  version "2026.4.1"
  sha256 "110e8a4b0471bc3820d6fad267cb5c8a63897d68cff09ac67bac3b9d6cd83dd0"

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

cask "fontra-pak" do
  version "2026.3.0"
  sha256 "a7d6a8122f792c63019d160207bbfd7102795beeedf449526da63438eebed13e"

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

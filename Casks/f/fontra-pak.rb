cask "fontra-pak" do
  version "2026.8.0"
  sha256 "c46f41704d7d641bd2628e45c197d3567ed951f82cac891678c7d6643da4a94f"

  url "https://github.com/fontra/fontra-pak/releases/download/#{version}/FontraPak-macOS.dmg"
  name "Fontra Pak"
  desc "Browser-based font editor"
  homepage "https://fontra.xyz/"

  depends_on macos: :big_sur

  app "Fontra Pak.app"

  uninstall quit: "xyz.fontra.fontra-pak"

  zap trash: [
    "~/Library/Preferences/com.xyz-fontra.FontraPak.plist",
    "~/Library/Preferences/xyz.fontra.fontra-pak.plist",
  ]
end

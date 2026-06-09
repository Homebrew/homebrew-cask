cask "fontra-pak" do
  version "2026.6.1"
  sha256 "2a22112689e6c36d8f35c642f194b85589c21d7caba7e596f6c16d17875971e9"

  url "https://github.com/fontra/fontra-pak/releases/download/#{version}/FontraPak-macOS.dmg",
      verified: "github.com/fontra/fontra-pak/"
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

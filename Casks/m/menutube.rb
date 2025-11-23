cask "menutube" do
  version "1.7.4"
  sha256 "ba7ea5753a270a5300a9a98effaa378a3e1e4305f89c804c1e779b06ebbf5a46"

  url "https://github.com/edanchenkov/MenuTube/releases/download/#{version}/MenuTube-#{version}.dmg",
      verified: "github.com/edanchenkov/MenuTube/"
  name "MenuTube"
  desc "Tool to capture YouTube into the menu bar"
  homepage "https://edanchenkov.github.io/MenuTube/"

  app "MenuTube.app"

  zap trash: [
    "~/Library/Application Support/MenuTube",
    "~/Library/Preferences/com.rednuclearmonkey.menutube.plist",
    "~/Library/Saved Application State/com.rednuclearmonkey.menutube.savedState",
  ]

  caveats do
    requires_rosetta
  end
end

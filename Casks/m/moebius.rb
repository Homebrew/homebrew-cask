cask "moebius" do
  version "1.0.29"
  sha256 "014e355767fa27796a6f5f5778b608a3a802ba064655c23776fa89f0dd1163ba"

  url "https://github.com/blocktronics/moebius/releases/download/#{version}/Moebius.dmg",
      verified: "github.com/blocktronics/moebius/"
  name "Moebius"
  desc "ANSI editor"
  homepage "https://blocktronics.github.io/moebius/"

  app "Moebius.app"

  zap trash: [
    "~/Library/Application Support/Moebius",
    "~/Library/Preferences/org.andyherbert.moebius.plist",
  ]

  caveats do
    requires_rosetta
  end
end

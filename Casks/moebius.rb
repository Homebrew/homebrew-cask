cask "moebius" do
  version "1.0.29"
  sha256 :no_check

  url "https://github.com/blocktronics/moebius/releases/download/1.0.29/Moebius.dmg",
      verified: "github.com/blocktronics/moebius"
  name "Moebius"
  desc "ANSI Editor"
  homepage "https://blocktronics.github.io/moebius/"

  app "Moebius.app"

  zap trash: "~/Library/Application Support/Moebius; ~/Library/Preferences/org.andyherbert.moebius.plist"
end

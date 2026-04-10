cask "icab" do
  version "6.3.7"
  sha256 "47b02c95b27f3a78659212f80f60edbe78d4bc938b43cdcfad97efb4cd625e29"

  url "https://icab.clauss-net.de/icab/iCab_#{version}.zip",
      verified: "icab.clauss-net.de/icab/"
  name "iCab"
  desc "Alternative web browser"
  homepage "https://www.icab.de/"

  livecheck do
    url "https://www.icab.de/download.html"
    regex(/iCab\sv?(\d+(?:\.\d+)+)/i)
  end

  app "iCab #{version}/iCab.app"

  zap trash: [
    "~/Library/Application Support/iCab",
    "~/Library/Caches/com.apple.helpd/Generated/iCab.help*",
    "~/Library/Caches/de.icab.iCab",
    "~/Library/Preferences/de.icab.iCab.plist",
    "~/Library/Preferences/iCab",
  ]
end

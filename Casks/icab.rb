cask "icab" do
  version "6.0.15"
  sha256 "4b2bc5388ab70988e50c23b32837442f6d3eb29cb57a48358da6d46787f162d9"

  url "https://icab.clauss-net.de/icab/iCab_#{version}.zip",
      verified: "icab.clauss-net.de/icab/"
  name "iCab"
  desc "Alternative web browser"
  homepage "http://www.icab.de/"

  livecheck do
    url "http://www.icab.de/download.html"
    regex(/iCab\sv?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "iCab #{version}/iCab.app"

  zap trash: [
    "~/Library/Application Support/iCab",
    "~/Library/Caches/com.apple.helpd/Generated/iCab.help*#{version}",
    "~/Library/Caches/de.icab.iCab",
    "~/Library/Preferences/de.icab.iCab.plist",
    "~/Library/Preferences/iCab",
  ]
end

cask "icab" do
  version "6.1.2"
  sha256 "b4816ac973bb2dfaaf4281763b178bf1b596bf8d3390d1d8491e177df4fbc900"

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

  app "iCab #{version.major_minor}/iCab.app"

  zap trash: [
    "~/Library/Application Support/iCab",
    "~/Library/Caches/com.apple.helpd/Generated/iCab.help*#{version}",
    "~/Library/Caches/de.icab.iCab",
    "~/Library/Preferences/de.icab.iCab.plist",
    "~/Library/Preferences/iCab",
  ]
end

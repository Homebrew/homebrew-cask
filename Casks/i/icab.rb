cask "icab" do
  version "6.3"
  sha256 "33d2053a1cc5210ee0991bf392171bc6e64c92e81ea4ca2f51585a32ac5459f0"

  url "https://icab.clauss-net.de/icab/iCab_#{version}.zip",
      verified: "icab.clauss-net.de/icab/"
  name "iCab"
  desc "Alternative web browser"
  homepage "https://www.icab.de/"

  livecheck do
    url "https://www.icab.de/download.html"
    regex(/iCab\sv?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "iCab #{version}/iCab.app"

  zap trash: [
    "~/Library/Application Support/iCab",
    "~/Library/Caches/com.apple.helpd/Generated/iCab.help*",
    "~/Library/Caches/de.icab.iCab",
    "~/Library/Preferences/de.icab.iCab.plist",
    "~/Library/Preferences/iCab",
  ]
end

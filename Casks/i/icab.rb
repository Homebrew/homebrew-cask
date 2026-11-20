cask "icab" do
  version "6.3.7"
  sha256 "5d09f7e8ded7bcc93a188b77d88f75740ef3f6a08ece27a298b0efa77ea22330"

  url "https://icab.clauss-net.de/icab/iCab_#{version}.zip"
  name "iCab"
  desc "Alternative web browser"
  homepage "https://www.icab.de/"

  livecheck do
    url "https://www.icab.de/download.html"
    regex(/iCab\sv?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "iCab #{version}/iCab.app"

  zap trash: [
    "~/Library/Application Support/iCab",
    "~/Library/Caches/com.apple.helpd/Generated/iCab.help*",
    "~/Library/Caches/de.icab.iCab",
    "~/Library/Preferences/de.icab.iCab.plist",
    "~/Library/Preferences/iCab",
  ]
end

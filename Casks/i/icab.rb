cask "icab" do
  version "6.3.4"
  sha256 "3371d18cca66027461237f8c7b81f16ce0dafbff6dea5d591c3d18e21e17c7ef"

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

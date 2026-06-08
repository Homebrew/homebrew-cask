cask "pale-moon" do
  version "34.3.0"
  sha256 "45b83582af9f86428aff0de374c9a742344d682f241f72123b5cc69f3b01f832"

  url "https://rm-us.palemoon.org/release/palemoon-#{version}.arm64.dmg"
  name "Pale Moon"
  desc "Web browser"
  homepage "https://www.palemoon.org/"

  livecheck do
    url "https://www.palemoon.org/download.php?mirror=us&bits=64&type=macarm"
    regex(/palemoon[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :header_match
  end

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "Pale Moon.app"

  zap trash: [
    "~/Library/Application Support/Pale Moon",
    "~/Library/Caches/Pale Moon",
    "~/Library/Preferences/org.mozilla.pale moon.plist",
    "~/Library/Saved Application State/org.mozilla.white star.savedState",
  ]
end

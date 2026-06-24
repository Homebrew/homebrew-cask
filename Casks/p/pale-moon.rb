cask "pale-moon" do
  version "34.3.1"
  sha256 "b93f8ad536eaf379e3b3dae067e0189b68fa5b2301381226fb18c788aae6642f"

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

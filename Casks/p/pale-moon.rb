cask "pale-moon" do
  version "34.2.2"
  sha256 "a76dbf39fc3e200178d5467e63f3d25b83ac5efe29ed973e717b323708ba4f4c"

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

cask "pale-moon" do
  version "35.0.1"
  sha256 "0ea26f9926a53fda7615f229006a8aa96a3cd565b286c90946834f78472e4a0d"

  url "https://rm-us.palemoon.org/release/palemoon-#{version}.arm64.dmg"
  name "Pale Moon"
  desc "Web browser"
  homepage "https://www.palemoon.org/"

  livecheck do
    url "https://www.palemoon.org/download.php?mirror=us&bits=64&type=macarm"
    regex(/palemoon[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :header_match
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Pale Moon.app"

  uninstall quit:   "org.mozilla.pale moon",
            signal: ["TERM", "org.mozilla.pale moon"]

  zap trash: [
    "~/Library/Application Support/Pale Moon",
    "~/Library/Caches/Pale Moon",
    "~/Library/Preferences/org.mozilla.pale moon.plist",
    "~/Library/Saved Application State/org.mozilla.pale moon.savedState",
    "~/Library/Saved Application State/org.mozilla.white star.savedState",
  ]
end

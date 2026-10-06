cask "pale-moon" do
  version "35.0.2"
  sha256 "1152e892e9e4f643e5545ca20493a8f7eb785894ac9eac68df5fbf30723c7255"

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

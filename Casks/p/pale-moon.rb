cask "pale-moon" do
  version "33.8.0"
  sha256 "4b277454c6082ea658511170eacd360bd91c35ca130f40bfaabd55e3b2298a40"

  url "https://rm-us.palemoon.org/release/palemoon-#{version}.arm64.dmg"
  name "Pale Moon"
  desc "Web browser"
  homepage "https://www.palemoon.org/"

  livecheck do
    url "https://repo.palemoon.org/MoonchildProductions/Pale-Moon.git"
    regex(/^v?(\d+(?:\.\d+)+)[._-]Release$/i)
  end

  depends_on macos: ">= :big_sur"
  depends_on arch: :arm64

  app "Pale Moon.app"

  zap trash: [
    "~/Library/Application Support/Pale Moon",
    "~/Library/Caches/Pale Moon",
    "~/Library/Preferences/org.mozilla.pale moon.plist",
    "~/Library/Saved Application State/org.mozilla.white star.savedState",
  ]
end

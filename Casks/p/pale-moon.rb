cask "pale-moon" do
  version "33.7.2"
  sha256 "07be329da8809328d95d96270e22d22585362f97cf73eced726786ee8df08169"

  url "https://rm-us.palemoon.org/release/palemoon-#{version}.arm64.dmg"
  name "Pale Moon"
  desc "Web browser"
  homepage "https://www.palemoon.org/"

  livecheck do
    url "https://repo.palemoon.org/MoonchildProductions/Pale-Moon.git"
    regex(/^v?(\d+(?:\.\d+)+)[._-]Release$/i)
  end

  no_autobump! because: :requires_manual_review

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

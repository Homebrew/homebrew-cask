cask "squirrel" do
  version "1.0.0"
  sha256 "583b31045037cd05f018e8a4c94440418cd0d5d35e98d1edda76f01f7b39a612"

  url "https://github.com/rime/squirrel/releases/download/#{version}/Squirrel-#{version}.pkg",
      verified: "github.com/rime/squirrel/"
  name "Squirrel"
  desc "Rime input method engine"
  homepage "https://rime.im/"

  auto_updates true
  depends_on macos: ">= :ventura"

  pkg "Squirrel-#{version}.pkg"

  uninstall pkgutil: [
              "com.googlecode.rimeime.Squirrel.pkg", # Package name of older versions (< 0.10.0)
              "im.rime.inputmethod.Squirrel",
            ],
            delete:  "/Library/Input Methods/Squirrel.app"

  zap trash: [
    "~/Library/Caches/com.googlecode.rimeime.inputmethod.Squirrel",
    "~/Library/Caches/im.rime.inputmethod.Squirrel",
    "~/Library/Preferences/com.googlecode.rimeime.inputmethod.Squirrel.plist",
    "~/Library/Preferences/im.rime.inputmethod.Squirrel.plist",
  ]
end

cask "squirrel" do
  version "0.16.0"
  sha256 "76c778245daa69137134f3ca9b2ef3aa5424e5829f19f4f2cc5ff8b479f0aa1d"

  url "https://github.com/rime/squirrel/releases/download/#{version}/Squirrel-#{version}.zip",
      verified: "github.com/rime/squirrel/"
  name "Squirrel"
  desc "Rime input method engine"
  homepage "https://rime.im/"

  auto_updates true

  pkg "Squirrel.pkg"

  uninstall pkgutil: [
              "im.rime.inputmethod.Squirrel",
              "com.googlecode.rimeime.Squirrel.pkg", # Package name of older versions (< 0.10.0)
            ],
            delete:  "/Library/Input Methods/Squirrel.app"

  zap trash: [
    "~/Library/Caches/im.rime.inputmethod.Squirrel",
    "~/Library/Preferences/im.rime.inputmethod.Squirrel.plist",
    # Data for older versions (< 0.10.0)
    "~/Library/Caches/com.googlecode.rimeime.inputmethod.Squirrel",
    "~/Library/Preferences/com.googlecode.rimeime.inputmethod.Squirrel.plist",
  ]
end

cask "squirrel" do
  version "0.16.2"
  sha256 "e08d28fd72445bccbdbccc06b16a9e300c07371f67d576cd4ed35731be9d4ad6"

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

cask "squirrel" do
  version "0.15.0"
  sha256 "4d06eeb3dc22b64827a0859f0267255afb9f60d59b7b506fb28ff4dd9aea7644"

  url "https://dl.bintray.com/rime/squirrel/Squirrel-#{version}.zip",
      verified: "dl.bintray.com/rime/squirrel/"
  name "Squirrel"
  desc "【鼠鬚管】輸入法"
  homepage "https://rime.im/"

  livecheck do
    url "https://rime.im/release/squirrel/appcast.xml"
    strategy :sparkle
  end

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

cask "squirrel" do
  version "0.14.0"
  sha256 "e7bc74ed1f0447a48b8c86f3685d8c6d0640d39895e6e4550488beeb4f870926"

  # dl.bintray.com/rime/squirrel/ was verified as official when first introduced to the cask
  url "https://dl.bintray.com/rime/squirrel/Squirrel-#{version}.zip"
  appcast "https://rime.im/release/squirrel/appcast.xml"
  name "Squirrel"
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

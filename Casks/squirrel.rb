cask "squirrel" do
  version "0.15.2"
  sha256 "91c3c7506e7225d793b8d1d77d65713f81ead65153bb3f1bdd69f9445c0ac9f6"

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

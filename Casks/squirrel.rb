cask "squirrel" do
  version "0.16.1"
  sha256 "8f3f3e9aa2e923e88220ea603dcbd3b70c3a88d8177a6c487cfdccc946b25379"

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

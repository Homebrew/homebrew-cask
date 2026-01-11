cask "squirrel-app" do
  version "1.1.1"
  sha256 "8eb0744dd30e39903f1379641d3f7a36783a5468b07b545289e81aa76d7d5ceb"

  url "https://github.com/rime/squirrel/releases/download/#{version}/Squirrel-#{version}.pkg",
      verified: "github.com/rime/squirrel/"
  name "Squirrel"
  desc "Rime input method engine"
  homepage "https://rime.im/"

  livecheck do
    url "https://rime.im/release/squirrel/appcast.xml"
    strategy :sparkle
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

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

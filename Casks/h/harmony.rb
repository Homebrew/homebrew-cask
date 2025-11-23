cask "harmony" do
  version "0.9.1"
  sha256 "c62e010fea64b5ff5f5ca54a58575f3fa5e98d01cf7bc88dc2fb4368437b6f50"

  url "https://github.com/vincelwt/harmony/releases/download/v#{version}/harmony-#{version}-mac.app.zip"
  name "Harmony"
  desc "Music player"
  homepage "https://github.com/vincelwt/harmony"

  deprecate! date: "2024-01-03", because: :discontinued
  disable! date: "2025-01-04", because: :discontinued

  app "Harmony.app"

  uninstall signal: [
    ["TERM", "com.vincelwt.harmony"],
    ["TERM", "com.vincelwt.harmony.helper"],
  ]

  zap trash: [
    "~/.config/configstore/harmony.json",
    "~/Library/Application Support/Harmony",
    "~/Library/Preferences/com.vincelwt.harmony.helper.plist",
    "~/Library/Preferences/com.vincelwt.harmony.plist",
    "~/Library/Saved Application State/com.vincelwt.harmony.savedState",
  ]

  caveats do
    requires_rosetta
  end
end

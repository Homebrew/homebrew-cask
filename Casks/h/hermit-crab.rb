cask "hermit-crab" do
  version "1.0.3"
  sha256 "f948f646c1a27f77921a21800f859653134db2631926c4b2f68658f84dd063a1"

  url "https://belkadan.com/hermitcrab/updates/HermitCrab-#{version}.zip"
  name "Hermit Crab"
  desc "Run shell commands without leaving your current app"
  homepage "https://belkadan.com/hermitcrab/"

  livecheck do
    url "https://belkadan.com/hermitcrab/updates/"
    strategy :sparkle
  end

  auto_updates true

  app "Hermit Crab.app"

  uninstall quit: "com.belkadan.Hermit-Crab"

  zap trash: "~/Library/Preferences/com.belkadan.Hermit-Crab.plist"

  caveats do
    requires_rosetta
  end
end

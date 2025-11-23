cask "hedgewars" do
  version "1.0.0"
  sha256 "5a0bdd9bc4cb7beea03b95a2549c1cf994ea8646f6621f5353dd22d79c757404"

  url "https://www.hedgewars.org/download/releases/Hedgewars-#{version}.dmg"
  name "Hedgewars"
  desc "Turn-based strategy, artillery, action and comedy game"
  homepage "https://hedgewars.org/"

  livecheck do
    url "https://hedgewars.org/download.html"
    regex(%r{href=.*?/Hedgewars[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Hedgewars.app"

  zap trash: [
    "~/Library/Application Support/Hedgewars",
    "~/Library/HTTPStorages/org.hedgewars.desktop",
    "~/Library/Preferences/org.hedgewars.desktop.plist",
    "~/Library/Saved Application State/org.hedgewars.desktop.savedState",
  ]

  caveats do
    requires_rosetta
  end
end

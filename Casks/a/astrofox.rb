cask "astrofox" do
  version "1.4.0"
  sha256 "8174fe0585e843635102510cff34db6d2f9711e4d5757b37deaf280da5c68537"

  url "https://files.astrofox.io/download/Astrofox-#{version}.dmg"
  name "Astrofox"
  desc "Motion graphics program for music visualisations"
  homepage "https://astrofox.io/"

  livecheck do
    url "https://files.astrofox.io/download/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Astrofox.app"

  zap trash: [
    "~/Library/Application Support/Astrofox",
    "~/Library/Preferences/io.astrofox.app.plist",
    "~/Library/Saved Application State/io.astrofox.app.savedState",
  ]

  caveats do
    requires_rosetta
  end
end

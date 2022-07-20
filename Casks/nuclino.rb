cask "nuclino" do
  version "1.6.1"
  sha256 "2dabaed5c4d201d389f6f96d4833fbb6d0f8b07758a7cb5d3a2fc4ac4c98e5b7"

  url "https://s3.eu-central-1.amazonaws.com/repository.nuclino.com/mac/Nuclino-#{version}.dmg",
      verified: "s3.eu-central-1.amazonaws.com/repository.nuclino.com/"
  name "Nuclino"
  desc "Collaborative wiki and knowledgebase"
  homepage "https://www.nuclino.com/"

  livecheck do
    url "https://s3-eu-central-1.amazonaws.com/repository.nuclino.com/mac/stable-mac.yml"
    strategy :electron_builder
  end

  app "Nuclino.app"

  zap trash: [
    "~/Library/Application Support/Nuclino",
    "~/Library/Caches/nuclino-desktop-updater",
    "~/Library/Logs/Nuclino",
    "~/Library/Preferences/com.nuclino.desktop.plist",
  ]
end

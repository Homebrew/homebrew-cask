cask "nuclino" do
  version "1.5.0"
  sha256 "3558cdd638c3bf3a2cf5130267f092960389050ea5336e133d8e66154a4ba1c3"

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

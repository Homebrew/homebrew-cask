cask "nuclino" do
  version "1.6.8"
  sha256 "dcebeef913bdb8b7f1b3badd418b3599069aac9cceb9b31916f88999d814b927"

  url "https://s3-eu-central-1.amazonaws.com/repository.nuclino.com/mac/Nuclino-#{version}-universal.dmg",
      verified: "s3-eu-central-1.amazonaws.com/repository.nuclino.com/"
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

cask "nuclino" do
  version "1.6.6"
  sha256 "82eae43a646d976a548d9864b9f3cfb0260b7b49fe9755970cba0f5aebbdcb7c"

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

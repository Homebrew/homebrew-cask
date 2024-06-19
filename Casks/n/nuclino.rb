cask "nuclino" do
  version "1.6.4"
  sha256 "74c351a3e3b4e3c37e1fa9ef0cd9a8af13a36ea3e75daf3f397002bd52d68f60"

  url "https://s3-eu-central-1.amazonaws.com/repository.nuclino.com/mac/Nuclino-#{version}-x64.dmg",
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

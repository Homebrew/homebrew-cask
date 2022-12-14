cask "nuclino" do
  version "1.6.3"
  sha256 "3578bd842c63db1cbe97f64a45b5db127b08efe97ac701238071685ae7125b47"

  url "https://s3.eu-central-1.amazonaws.com/repository.nuclino.com/mac/Nuclino-#{version}-x64.dmg",
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

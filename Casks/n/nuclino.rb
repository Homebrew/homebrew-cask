cask "nuclino" do
  version "1.7.0"
  sha256 "d503f121d91f498990c8001946a3246ca64247f0c7365a7fcb8c4ed1e7bcc1c1"

  url "https://s3-eu-central-1.amazonaws.com/repository.nuclino.com/mac/Nuclino-#{version}-universal.dmg"
  name "Nuclino"
  desc "Collaborative wiki and knowledgebase"
  homepage "https://www.nuclino.com/"

  livecheck do
    url "https://s3-eu-central-1.amazonaws.com/repository.nuclino.com/mac/stable-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :ventura

  app "Nuclino.app"

  zap trash: [
    "~/Library/Application Support/Nuclino",
    "~/Library/Caches/nuclino-desktop-updater",
    "~/Library/Logs/Nuclino",
    "~/Library/Preferences/com.nuclino.desktop.plist",
  ]
end

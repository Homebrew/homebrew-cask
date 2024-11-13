cask "nuclino" do
  version "1.6.7"
  sha256 "73052aafeadd2adb7b768351b5296681fc84946f28284a19e3ca6fb21e83584f"

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

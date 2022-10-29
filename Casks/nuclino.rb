cask "nuclino" do
  version "1.6.2"
  sha256 "ecefabc96a645d5d559cd97b77a966a7c4fb7d64b3e12b0e3380aa6431f3a10c"

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

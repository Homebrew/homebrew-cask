cask "cursr" do
  arch arm: "arm64", intel: "x64"

  version "1.4.12"
  sha256 arm:   "2baa6b72c8b0747dec266d82c9f335b0f7511b230d27bfef334cfc62de38e358",
         intel: "5751b18bfb8f24a8b55d3d6b2123272890191a0ec82035e159f6355fe9861191"

  url "https://github.com/bitgapp/Cursr/releases/download/v#{version}/Cursr-mac-#{arch}.dmg",
      verified: "github.com/bitgapp/Cursr/"
  name "Cursr"
  desc "Customize mouse movements between multiple displays"
  homepage "https://cursr.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Cursr.app"

  zap trash: [
    "~/Library/Application Support/cursr",
    "~/Library/Preferences/com.bitgapp.cursr.plist",
  ]
end

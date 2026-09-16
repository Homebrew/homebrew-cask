cask "saega" do
  arch arm: "arm64"

  version "1.0.19"
  sha256 "81c03691ed6ed7a0fc15ef737a91edf4b37126a06b10ab4578ba2768aad5e8d6"

  url "https://storage.googleapis.com/saega-downloads/Saega-#{version}.dmg"
  name "Saega"
  desc "Privacy-first dictation app built for Swedish and Norwegian"
  homepage "https://saega.app/"

  livecheck do
    url "https://saega.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch:  :arm64
  depends_on macos: :ventura

  app "Saega.app"

  zap trash: [
    "~/Library/Application Support/Saega",
    "~/Library/Caches/app.saega.app",
    "~/Library/Logs/Saega",
    "~/Library/Preferences/app.saega.app.plist",
  ]
end

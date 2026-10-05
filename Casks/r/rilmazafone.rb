cask "rilmazafone" do
  version "2.9"
  sha256 "2bfaf7c4f2ada11d5ffa92c125c53ed9d5c544ad3e3c1e35e72256a904078c5e"

  url "https://github.com/kageroumado/rilmazafone/releases/download/v#{version}/Rilmazafone-#{version}.dmg"
  name "Rilmazafone"
  desc "Visual designer and release builder for DMG disk images"
  homepage "https://kagerou.glass/rilmazafone/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Rilmazafone.app"

  zap trash: [
    "~/Library/Application Support/Rilmazafone",
    "~/Library/Preferences/glass.kagerou.rilmazafone.plist",
  ]
end

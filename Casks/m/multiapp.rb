cask "multiapp" do
  version "0.241.1"
  sha256 "dc47acd93c08d5bfa3338faff036ad90af83c1d693eed009b5f2fc6e6263985b"

  url "https://updates.multi.app/installers/Multi%20#{version}.dmg"
  name "Multi"
  desc "Multiplayer Collaboration"
  homepage "https://www.multi.app/"

  livecheck do
    url "https://updates.multi.app/latest"
    strategy :header_match
  end

  app "Multi.app"

  zap trash: [
    "~/Library/Application Support/Multi",
    "~/Library/Caches/app.multi.multi",
    "~/Library/Preferences/app.multi.multi.plist",
  ]
end

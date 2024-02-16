cask "multiapp" do
  version "0.412.0"
  sha256 "9ec6085cb30cad181b209e8a9d0821e3aae46d87693c41decb4a793de4796d8b"

  url "https://updates.multi.app/installers/Multi%20#{version}.dmg"
  name "Multi"
  desc "Multiplayer Collaboration"
  homepage "https://www.multi.app/"

  livecheck do
    url "https://updates.multi.app/installers/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Multi.app"

  zap trash: [
    "~/Library/Application Support/Multi",
    "~/Library/Caches/app.multi.multi",
    "~/Library/Preferences/app.multi.multi.plist",
  ]
end

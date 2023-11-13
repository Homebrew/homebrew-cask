cask "multiapp" do
  version "0.317.0"
  sha256 "184c07f3652ae0116a13f11cdf4303ccd091bc81860ecafc9b1d757dcb649a7b"

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

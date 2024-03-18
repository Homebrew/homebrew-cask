cask "multiapp" do
  version "0.443.0"
  sha256 "d14c501e7c522606caa2dca91830cc4ab04705d47e53a94a2fea74ff3b268fd6"

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

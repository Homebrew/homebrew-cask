cask "bunch" do
  version "1.4.13,173"
  sha256 "3e29b3161a8be58c9f89fa92927d492a0919090dfa6e468ea1e15c517ccc8b04"

  url "https://brettterpstra.com/updates/bunch/Bunch#{version.csv.first}#{version.csv.second}.dmg",
      verified: "brettterpstra.com/updates/bunch/"
  name "Bunch"
  desc "Automation tool"
  homepage "https://bunchapp.co/"

  livecheck do
    url "https://brettterpstra.com/updates/bunch/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Bunch.app"

  zap trash: "~/Library/Preferences/com.brettterpstra.Bunch.plist"
end

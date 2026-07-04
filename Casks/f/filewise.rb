cask "filewise" do
  version "0.5.1"
  sha256 "dcfb0ca7d4f918b8c97a5fa67dd105e4e0d5a207f4ee6d028d800cdc4a42068e"

  url "https://dl-filewise.gatheon.com/Filewise_v#{version}_slim.dmg"
  name "Filewise"
  desc "Content-aware file organizer that renames and sorts documents"
  homepage "https://filewise.gatheon.com/"

  livecheck do
    url "https://dl-filewise.gatheon.com/appcast-slim.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Filewise.app"

  zap trash: [
    "~/Library/Application Support/Filewise",
    "~/Library/Caches/fyi.jiang.guiwei",
    "~/Library/Preferences/fyi.jiang.guiwei.plist",
    "~/Library/Saved Application State/fyi.jiang.guiwei.savedState",
  ]
end

cask "multipatch" do
  version "2.0"
  sha256 "92d4077bc10802c7b4395d6716afc5c23bbdb34788be4a672fd5fef807a2072b"

  url "https://projects.sappharad.com/multipatch/multipatch#{version.no_dots}.zip"
  name "MultiPatch"
  desc "File patching utility"
  homepage "https://projects.sappharad.com/multipatch/"

  livecheck do
    url "https://projects.sappharad.com/multipatch/updates.xml"
    strategy :sparkle
  end

  auto_updates true

  app "MultiPatch.app"

  zap trash: [
    "~/Library/Preferences/com.sappharad.MultiPatch.plist",
    "~/Library/Saved Application State/com.sappharad.MultiPatch.savedState",
  ]
end

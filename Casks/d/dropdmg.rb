cask "dropdmg" do
  version "3.6.8"
  sha256 "55751ac3f98e30c51fc769221483bcf7ae1022dc46f4726fb86458482598f4d0"

  url "https://c-command.com/downloads/DropDMG-#{version}.dmg"
  name "DropDMG"
  desc "Create DMGs and other archives"
  homepage "https://c-command.com/dropdmg/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/DropDMG[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "DropDMG.app"

  zap trash: [
    "~/Library/Application Support/DropDMG",
    "~/Library/Automator/DropDMG.action",
    "~/Library/Automator/Expand Disk Image.action",
    "~/Library/Caches/com.c-command.DropDMG",
    "~/Library/Preferences/com.c-command.DropDMG.plist",
  ]
end

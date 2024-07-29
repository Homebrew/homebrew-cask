cask "porting-kit" do
  version "6.3.2"
  sha256 "0fea1bbd36bea3c115bc8a94a0ae9afe982a44d824c09cb0d940603f2e0e1a04"

  url "https://github.com/vitor251093/porting-kit-releases/releases/download/v#{version}/Porting-Kit-#{version}.dmg",
      verified: "github.com/vitor251093/porting-kit-releases/"
  name "Porting Kit"
  desc "Install games and apps compiled for Microsoft Windows"
  homepage "https://portingkit.com/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Porting Kit.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.paulthetall.portingkit.sfl*",
    "~/Library/Application Support/portingkit",
    "~/Library/Preferences/com.paulthetall.portingkit.plist",
    "~/Library/Saved Application State/com.paulthetall.portingkit.savedState",
  ]

  caveats do
    requires_rosetta
  end
end

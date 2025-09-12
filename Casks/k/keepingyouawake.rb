cask "keepingyouawake" do
  version "1.6.8"
  sha256 "8001a149b4490c008fdac19898bce9902d516c4aa6412a7eb0f9a37443b15c6b"

  url "https://github.com/newmarcel/KeepingYouAwake/releases/download/#{version}/KeepingYouAwake-#{version}.zip",
      verified: "github.com/newmarcel/KeepingYouAwake/"
  name "KeepingYouAwake"
  desc "Tool to prevent the system from going into sleep mode"
  homepage "https://keepingyouawake.app/"

  livecheck do
    url "https://newmarcel.github.io/KeepingYouAwake/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "KeepingYouAwake.app"

  uninstall quit: "info.marcel-dierkes.KeepingYouAwake"

  zap trash: [
    "~/Library/Application Scripts/info.marcel-dierkes.KeepingYouAwake",
    "~/Library/Application Scripts/info.marcel-dierkes.KeepingYouAwake.Launcher",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/info.marcel-dierkes.keepingyouawake.sfl*",
    "~/Library/Application Support/info.marcel-dierkes.KeepingYouAwake",
    "~/Library/Caches/info.marcel-dierkes.KeepingYouAwake",
    "~/Library/Containers/info.marcel-dierkes.KeepingYouAwake",
    "~/Library/Containers/info.marcel-dierkes.KeepingYouAwake.Launcher",
    "~/Library/Cookies/info.marcel-dierkes.KeepingYouAwake.binarycookies",
    "~/Library/Preferences/info.marcel-dierkes.KeepingYouAwake.plist",
    "~/Library/Saved Application State/info.marcel-dierkes.KeepingYouAwake.savedState",
  ]
end

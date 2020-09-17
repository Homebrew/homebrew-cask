cask "keepingyouawake" do
  version "1.5.2"
  sha256 "2d60da4b5f85803eadf9c29e32aa878f84f2a82f618ae1720b8d76454b88ac11"

  # github.com/newmarcel/KeepingYouAwake/ was verified as official when first introduced to the cask
  url "https://github.com/newmarcel/KeepingYouAwake/releases/download/#{version}/KeepingYouAwake-#{version}.zip"
  appcast "https://github.com/newmarcel/KeepingYouAwake/releases.atom"
  name "KeepingYouAwake"
  desc "Tool to prevent the system from going into sleep mode"
  homepage "https://keepingyouawake.app/"

  auto_updates true
  depends_on macos: ">= :sierra"

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

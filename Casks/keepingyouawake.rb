cask "keepingyouawake" do
  version "1.6.1"
  sha256 "5830c1b282fa862ed717a60eb08afc3c7a935b5ccf5b064e12c61373952034ff"

  url "https://github.com/newmarcel/KeepingYouAwake/releases/download/#{version}/KeepingYouAwake-#{version}.zip",
      verified: "github.com/newmarcel/KeepingYouAwake/"
  name "KeepingYouAwake"
  desc "Tool to prevent the system from going into sleep mode"
  homepage "https://keepingyouawake.app/"

  livecheck do
    url :url
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*)$/)
  end

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

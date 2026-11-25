cask "sejda-pdf" do
  arch arm: "_arm64"

  version "7.10.2"
  sha256 arm:   "c22b35aa25252bfac00b63d0e2f02343354cf0c2f1aa61145971a1601a734ad6",
         intel: "191cb624d15e738cf9e18c500c6f3705a8e783e9c744b064e2aaf89b164b9714"

  url "https://downloads.sejda-cdn.com/sejda-desktop_#{version}#{arch}.dmg"
  name "Sejda PDF Desktop"
  desc "PDF editor"
  homepage "https://www.sejda.com/en/desktop"

  livecheck do
    url :homepage, user_agent: :browser
    regex(/mac\s*:\s*["']sejda[._-]desktop[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on :macos

  app "Sejda PDF Desktop.app"

  zap trash: [
    "~/.sejda",
    "~/.sejda-desktop",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sejda.sejda-desktop.sfl*",
    "~/Library/Application Support/Sejda PDF Desktop",
    "~/Library/Preferences/com.sejda.sejda-desktop.plist",
    "~/Library/Saved Application State/com.sejda.sejda-desktop.savedState",
  ]
end

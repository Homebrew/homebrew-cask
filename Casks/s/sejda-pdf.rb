cask "sejda-pdf" do
  arch arm: "_arm64"

  version "7.9.12"
  sha256 arm:   "94bcb5705be67570373541ec7d0d412d1b43892f84d0044985a88a8f4a2b8afc",
         intel: "f474f511eea37849b2df3a4d735fffbe1810ea4fa6478c43d2c037f6f726beda"

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

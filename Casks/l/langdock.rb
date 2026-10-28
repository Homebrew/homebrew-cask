cask "langdock" do
  version "1.0.15"
  sha256 "00c85b359da317e890f4529ccee09e6fd9c9ef7fa7d2bf8157a930949f65797b"

  url "https://desktop.langdock.com/global/stable/Langdock-#{version}.dmg"
  name "Langdock"
  desc "Platform for AI Adoption"
  homepage "https://langdock.com/products/desktop"

  livecheck do
    url "https://desktop.langdock.com/global/stable/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :sonoma

  app "Langdock.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.langdock.desktop.sfl*",
    "~/Library/Application Support/langdock",
    "~/Library/Logs/Langdock",
    "~/Library/Preferences/com.langdock.desktop.plist",
  ]
end

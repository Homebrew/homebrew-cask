cask "langdock" do
  version "1.1.6"
  sha256 "c86f8408f20a6f6e9f2cd35ca3f0da733398f14624fb29e9fcabdcc0ad907212"

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

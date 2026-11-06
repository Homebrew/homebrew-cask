cask "langdock" do
  version "1.1.2"
  sha256 "55868dd53e65bef71ba6c981ef0a87f8d4777146452b54d3866fbbabe47a83e2"

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

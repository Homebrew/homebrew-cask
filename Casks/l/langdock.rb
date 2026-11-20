cask "langdock" do
  version "1.1.5"
  sha256 "be75d268d9619215c65c756fb7c2c5f153e4c23b5165b44572b67ab49088d3cd"

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

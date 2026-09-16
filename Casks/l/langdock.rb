cask "langdock" do
  version "1.0.7"
  sha256 "af59ee0f749a72d6f45be30c7aaab2c2acebf6f172e1fb80a27790e22a81767b"

  url "https://desktop.langdock.com/global/stable/Langdock-#{version}-universal.dmg"
  name "Langdock"
  desc "Platform for AI Adoption"
  homepage "https://langdock.com/products/desktop"

  livecheck do
    url "https://desktop.langdock.com/global/stable/download/mac"
    strategy :header_match
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

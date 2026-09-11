cask "langdock" do
  version "1.0.5"
  sha256 "41f4a6267fdb582eea458de4a22218193e33adf0043e4816d2167d320e784f41"

  url "https://desktop.langdock.com/global/stable/Langdock-#{version}-universal.dmg"
  name "Langdock"
  desc "Platform for AI Adoption"
  homepage "https://langdock.com/products/desktop"

  livecheck do
    skip "Upstream provides no machine-readable version listing"
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

cask "langdock" do
  version "1.0.11"
  sha256 "f768131e3db3de1dc1b12238288a62602913765a3d5464c356febcff858672ce"

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

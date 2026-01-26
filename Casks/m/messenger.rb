cask "messenger" do
  version "525.0.0.34.106"
  sha256 :no_check

  url "https://www.messenger.com/messenger/desktop/downloadV2/?platform=mac&variant=catalyst"
  name "Facebook Messenger"
  desc "Native desktop app for Messenger (formerly Facebook Messenger)"
  homepage "https://www.messenger.com/desktop"

  deprecate! date: "2025-12-25", because: :discontinued
  disable! date: "2025-12-25", because: :discontinued

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Messenger.app"

  zap trash: [
    "~/Library/Application Support/Messenger",
    "~/Library/Caches/Messenger",
    "~/Library/Logs/Messenger",
  ]
end

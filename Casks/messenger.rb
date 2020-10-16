cask "messenger" do
  version :latest
  sha256 :no_check

  url "https://www.messenger.com/messenger/desktop/downloadV2/?platform=mac"
  name "Messenger"
  desc "Native desktop app for Messenger (formerly Facebook Messenger)"
  homepage "https://www.messenger.com/desktop"

  app "Messenger.app"
end

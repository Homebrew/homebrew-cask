cask "messenger" do
  version "78.4.114,257025287"
  sha256 "e0f1819ff6f7f88e45b02a0b0e46b7422d8fe09814c3a2d92197ab12d76500e7"

  # facebook.com/messenger/desktop/ was verified as official when first introduced to the cask
  url "https://www.facebook.com/messenger/desktop/update/#{version.after_comma}.zip"
  # The appcast will fail CI due to its Cache-Control settings. See:
  #   https://github.com/Homebrew/homebrew-cask/pull/90957#issuecomment-710740050
  appcast "https://www.facebook.com/messenger/desktop/update/latest-mac.yml"
  name "Facebook Messenger"
  desc "Native desktop app for Messenger (formerly Facebook Messenger)"
  homepage "https://www.messenger.com/desktop"

  app "Messenger.app"

  zap trash: [
    "~/Library/Application Support/Messenger",
    "~/Library/Caches/Messenger",
    "~/Library/Logs/Messenger",
  ]
end

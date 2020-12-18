cask "messenger" do
  version "81.6.118,261169871"
  sha256 "cd3fe4d19f4aa920c30e84fccd801ee5c96ccd5e26f670ff7860bceb45884732"

  url "https://www.facebook.com/messenger/desktop/update/#{version.after_comma}.zip",
      verified: "facebook.com/messenger/desktop/"
  # The appcast will fail CI due to its Cache-Control settings. See:
  #   https://github.com/Homebrew/homebrew-cask/pull/90957#issuecomment-710740050
  appcast "https://www.facebook.com/messenger/desktop/update/latest-mac.yml"
  name "Facebook Messenger"
  desc "Native desktop app for Messenger (formerly Facebook Messenger)"
  homepage "https://www.messenger.com/desktop"

  auto_updates true

  app "Messenger.app"

  zap trash: [
    "~/Library/Application Support/Messenger",
    "~/Library/Caches/Messenger",
    "~/Library/Logs/Messenger",
  ]
end

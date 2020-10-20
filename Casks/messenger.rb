cask "messenger" do
  version "73.2.121,249985498"
  sha256 "104ee1faf4b00d6c77b9500ddd601f6388f25dd781e5dbb5a2c0b73cce68eaa0"

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

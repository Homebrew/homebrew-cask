cask "messenger" do
  version "75.4.124,252571813"
  sha256 "2aa67781d56fc2de284fcd3798a5034c1fcc1d6a944676bcd49aaa129f5419af"

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

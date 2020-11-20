cask "messenger" do
  version "78.5.114,257405162"
  sha256 "ddc2c8f31f32f1accf9f5824d0136cfb70b4cf23c9e10183634003299f0f65a8"

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

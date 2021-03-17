cask "messenger" do
  version "83.5.128,262535382"
  sha256 "07993d958f027ff898ed784d7435e87e34afb9cd710ba72a9a5965fad0e3ba4c"

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

cask "messenger" do
  version "127.6.105,326188208"
  sha256 "571c8250cd8d7eaaa97f8ab052593211ade3d85e92945113919f4e6cfcc0bf0e"

  url "https://www.facebook.com/messenger/desktop/update/#{version.after_comma}.zip",
      verified: "facebook.com/messenger/desktop/"
  name "Facebook Messenger"
  desc "Native desktop app for Messenger (formerly Facebook Messenger)"
  homepage "https://www.messenger.com/desktop"

  livecheck do
    url "https://www.facebook.com/messenger/desktop/update/latest-mac.yml"
    strategy :electron_builder do |yml|
      "#{yml["version"]},#{yml["path"][%r{/(\d+)\.zip}i, 1]}"
    end
  end

  auto_updates true

  app "Messenger.app"

  zap trash: [
    "~/Library/Application Support/Messenger",
    "~/Library/Caches/Messenger",
    "~/Library/Logs/Messenger",
  ]
end

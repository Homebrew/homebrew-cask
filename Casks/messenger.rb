cask "messenger" do
  version "128.10.74,327944632"
  sha256 "6e59ee32018184c649c70205e0e83b3e576ad202f20568f4a7249f80bd6869d9"

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

cask "messenger" do
  version "123.4.118,319306439"
  sha256 "82dcaf1619bab6dac2b91950723c5f7c9b102fc7001329f3821eca88ed995620"

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

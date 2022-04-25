cask "messenger" do
  version "149.15.107,365481452"
  sha256 "4dc1ec94aa36478eda81ed9dc5335f133f742546f689b9331d734f105fb962df"

  url "https://www.facebook.com/messenger/desktop/update/#{version.csv.second}.zip",
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

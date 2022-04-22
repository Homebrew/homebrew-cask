cask "messenger" do
  version "149.14.107,365154085"
  sha256 "a61c769b20d6ca2067fdf629b5fea119e72e34fd13024d70c14ea4570f25fdbe"

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

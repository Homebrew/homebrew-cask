cask "stockbit" do
  version "2.9.0"
  sha256 "35e3a74f67c7443601ceaff81552fb96f0492cf96f4bc920a5676d92d458de80"

  url "https://sda-release-v2.stockbit.com/release/#{version}/macos/Stockbit.dmg",
      user_agent: :browser
  name "Stockbit"
  desc "Indonesian stock trading and analysis platform"
  homepage "https://stockbit.com/desktop"

  livecheck do
    url "https://sda-updater.stockbit.com/macos?format=bundle",
        user_agent: :browser
    regex(%r{/release/(\d+(?:\.\d+)+)/macos/Stockbit\.dmg}i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :monterey

  app "Stockbit.app"

  zap trash: [
    "~/.stockbit",
    "~/Library/Application Support/com.stockbit.desktop",
    "~/Library/Caches/com.stockbit.desktop",
    "~/Library/WebKit/com.stockbit.desktop",
  ]
end

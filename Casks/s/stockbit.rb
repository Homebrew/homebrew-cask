cask "stockbit" do
  version "2.8.1"
  sha256 "b28479c2df8ec28203d4348b7f2a3f29a545ce5c88dd6b3bcc8df10010bcc4db"

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

cask "stockbit" do
  version "2.2.0"
  sha256 "026dc5b525f4a30d90888d4cd584948e15f3c947eaf48ec49110864bb9be1b6d"

  url "https://sda-release-v2.stockbit.com/release/#{version}/macos/Stockbit.dmg"
  name "Stockbit"
  desc "Indonesian stock trading and analysis platform"
  homepage "https://stockbit.com/desktop"

  livecheck do
    url "https://sda-updater.stockbit.com/macos?format=bundle"
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

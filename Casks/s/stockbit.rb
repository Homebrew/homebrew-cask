cask "stockbit" do
  version "2.4.1"
  sha256 "ea613b50d5cff141aaf799a97793fbf408cfe5c6fccf14729232e03c2a01e8a4"

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

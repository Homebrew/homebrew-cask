cask "stockbit" do
  version "2.7.1"
  sha256 "84944a6c7e43224259bbf482e85ebb56c42ea7b4c3b00e36272cf60a9526bdb3"

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

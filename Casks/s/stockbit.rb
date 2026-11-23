cask "stockbit" do
  version "2.10.0"
  sha256 "45d79403d6de3d93c1bf6304c72420d0510d3a5c9767082e7b10c4cd76d01314"

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

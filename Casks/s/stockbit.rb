cask "stockbit" do
  version "2.7.5"
  sha256 "7cf43ed294c0600bbc74cfb5ac9a5f7a58d710dcabb9306f6b74a741e33142f9"

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

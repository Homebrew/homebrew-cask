cask "soulver-cli" do
  version "1.0.0"
  sha256 "21d5463151181ee4b23c5bdc603c4bb52cf215bf0f29ca7b228ce812e2f2b80c"

  url "https://github.com/soulverteam/Soulver-CLI/releases/download/#{version}/soulver.zip"
  name "Soulver CLI"
  desc "Standalone cli for the Soulver calculation engine"
  homepage "https://github.com/soulverteam/Soulver-CLI"

  depends_on macos: ">= :monterey"

  binary "soulver"

  zap trash: "#{HOMEBREW_PREFIX}/SoulverCore_SoulverCore.bundle"
end

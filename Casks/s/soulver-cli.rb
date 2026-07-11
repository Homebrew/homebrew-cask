cask "soulver-cli" do
  version "2.0.1"
  sha256 "59b7e0a94726ca8059a452d7ce3e919f33b9acda774e8985b9cd9f52d7ecbaf5"

  url "https://github.com/soulverteam/Soulver-CLI/releases/download/#{version}/soulver.zip"
  name "Soulver CLI"
  desc "Standalone cli for the Soulver calculation engine"
  homepage "https://github.com/soulverteam/Soulver-CLI"

  conflicts_with cask: "soulver"
  depends_on macos: :monterey

  binary "soulver"

  zap trash: "#{HOMEBREW_PREFIX}/SoulverCore_SoulverCore.bundle"
end

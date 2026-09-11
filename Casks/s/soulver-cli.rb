cask "soulver-cli" do
  version "2.2.0"
  sha256 "e635628913a726f3eedb4e8ae96913f26240384edfd0c11a6fd26b2d66bea727"

  url "https://github.com/soulverteam/Soulver-CLI/releases/download/#{version}/soulver.zip"
  name "Soulver CLI"
  desc "Standalone cli for the Soulver calculation engine"
  homepage "https://github.com/soulverteam/Soulver-CLI"

  conflicts_with cask: "soulver"
  depends_on macos: :monterey

  binary "soulver"

  zap trash: "#{HOMEBREW_PREFIX}/SoulverCore_SoulverCore.bundle"
end

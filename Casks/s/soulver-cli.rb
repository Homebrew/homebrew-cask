cask "soulver-cli" do
  version "2.0.0"
  sha256 "b641d7ff2de9768b0dad2ca1eb70ffd7b445e9beaceb7388e986d1318e465dba"

  url "https://github.com/soulverteam/Soulver-CLI/releases/download/#{version}/soulver.zip"
  name "Soulver CLI"
  desc "Standalone cli for the Soulver calculation engine"
  homepage "https://github.com/soulverteam/Soulver-CLI"

  conflicts_with cask: "soulver"
  depends_on macos: :monterey

  binary "soulver"

  zap trash: "#{HOMEBREW_PREFIX}/SoulverCore_SoulverCore.bundle"
end

cask "soulver-cli" do
  version "1.0.1"
  sha256 "9700862f1d7823065e6423da9529582a1ec9e9f5bd24cb8039f10e5636609b79"

  url "https://github.com/soulverteam/Soulver-CLI/releases/download/#{version}/soulver.zip"
  name "Soulver CLI"
  desc "Standalone cli for the Soulver calculation engine"
  homepage "https://github.com/soulverteam/Soulver-CLI"

  depends_on macos: ">= :monterey"

  binary "soulver"

  zap trash: "#{HOMEBREW_PREFIX}/SoulverCore_SoulverCore.bundle"
end

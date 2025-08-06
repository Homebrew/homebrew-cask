cask "soulver-cli" do
  version "1.0.3"
  sha256 "79e61156d59b44af5b9926c92e56f71e2d4b75ec574a81c8ba3319ca4f22341f"

  url "https://github.com/soulverteam/Soulver-CLI/releases/download/#{version}/soulver.zip"
  name "Soulver CLI"
  desc "Standalone cli for the Soulver calculation engine"
  homepage "https://github.com/soulverteam/Soulver-CLI"

  depends_on macos: ">= :monterey"

  binary "soulver"

  zap trash: "#{HOMEBREW_PREFIX}/SoulverCore_SoulverCore.bundle"
end

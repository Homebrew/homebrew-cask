cask "soulver-cli" do
  version "2.1.0"
  sha256 "f11672e3d9f6317416b9ff22b7e51e27980c9c7059db9282cca52b6277cd30bb"

  url "https://github.com/soulverteam/Soulver-CLI/releases/download/#{version}/soulver.zip"
  name "Soulver CLI"
  desc "Standalone cli for the Soulver calculation engine"
  homepage "https://github.com/soulverteam/Soulver-CLI"

  conflicts_with cask: "soulver"
  depends_on macos: :monterey

  binary "soulver"

  zap trash: "#{HOMEBREW_PREFIX}/SoulverCore_SoulverCore.bundle"
end

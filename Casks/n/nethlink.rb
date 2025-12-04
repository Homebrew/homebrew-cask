cask "nethlink" do
  arch arm: "arm64", intel: "x64"

  version "1.3.2"
  sha256 arm:   "1f48e4306f6c63a82870ad3ca3abdba1124f36f8460def13789e65e8c584c699",
         intel: "91dd65697b0caa830599748abdab0f712003e9d771f3df8c13d8e271a65678f2"

  url "https://github.com/NethServer/nethlink/releases/download/v#{version}/nethlink-#{version}-#{arch}.dmg"
  name "NethLink"
  desc "Link NethServer systems and provide remote access tools"
  homepage "https://github.com/NethServer/nethlink"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "NethLink.app"

  zap trash: "~/Library/Application Support/nethlink"
end

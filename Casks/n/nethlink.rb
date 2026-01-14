cask "nethlink" do
  arch arm: "arm64", intel: "x64"

  version "1.4.0"
  sha256 arm:   "8fd5541da2dc3cacd0513e3053f85ec1904d377439630c6355b97b170976bcab",
         intel: "cb49c8d9457664a4c31173f97fd8299bd7736fadf6139c4b9550a6e9d2c524fc"

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

cask "nethlink" do
  arch arm: "arm64", intel: "x64"

  version "1.4.4"
  sha256 arm:   "c0b5d2c90c640d7f1f196e4ade991d6940f5f82ab984563c40539ac81341867b",
         intel: "7694f91e672f2f49b104c137a7d7f09c9fec73bf212dce7f8c8b4f9be1f5cbc9"

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

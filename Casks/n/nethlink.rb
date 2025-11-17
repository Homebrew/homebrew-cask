cask "nethlink" do
  arch arm: "arm64", intel: "x64"

  version "1.3.1"
  sha256 arm:   "88f177f1a9ddc1cf6db8aab2c6e65c74b816e478e9bc44ca98c73c1429912cbc",
         intel: "9c9c8911a400ff71b36974d9d6737a3b15cc38dac071c95385e8ab3f2dade0b3"

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

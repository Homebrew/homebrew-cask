cask "nethlink" do
  arch arm: "arm64", intel: "x64"

  version "1.4.2"
  sha256 arm:   "a8e85c8a9a916ac6eb9ef99c9b9c9a1ccf4dcab2818856b28ab04be4809c819e",
         intel: "fb95447e42657319c8d20a59ba28bfa5faecb65b63331e4fdf43011b1398ccd7"

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

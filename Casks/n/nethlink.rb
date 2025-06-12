cask "nethlink" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "d77b993c07b33a388e835bf47deb20f4c86d7a21a214fc54842b76cbdc4c8512",
         intel: "f7b2de1d620c914487d86c58a2a5f03566856f86832bae3119a8ddadc4e0627e"

  url "https://github.com/NethServer/nethlink/releases/download/v#{version}/nethlink-#{version}-#{arch}.dmg"
  name "NethLink"
  desc "Link NethServer systems and provide remote access tools"
  homepage "https://github.com/NethServer/nethlink"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :requires_manual_review

  auto_updates true
  depends_on macos: ">= :catalina"

  app "NethLink.app"

  zap trash: "~/Library/Application Support/nethlink"
end

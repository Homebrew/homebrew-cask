cask "nethlink" do
  arch arm: "arm64", intel: "x64"

  version "1.2.3"
  sha256 arm:   "66a21ddd7a54c43dc5a7df41a6bf27ffb964ea05392506fe463bf8a02714ba66",
         intel: "e5b299174ea6f6b44063a94bdcab01cbe59383f78caedd8637d0c21ee064b0f4"

  url "https://github.com/NethServer/nethlink/releases/download/v#{version}/nethlink-#{version}-#{arch}.dmg"
  name "NethLink"
  desc "Link NethServer systems and provide remote access tools"
  homepage "https://github.com/NethServer/nethlink"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "NethLink.app"

  zap trash: "~/Library/Application Support/nethlink"
end

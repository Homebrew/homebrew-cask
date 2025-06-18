cask "nethlink" do
  arch arm: "arm64", intel: "x64"

  version "1.2.1"
  sha256 arm:   "a05e27f8ed112016bced3d9c4fe83d6d4418fd9070da9804ca29972778344065",
         intel: "c00fa6164a8c223e148d59ca6620e427adfff2541184ade8349d66c5a7e6b519"

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

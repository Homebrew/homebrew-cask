cask "nethlink" do
  arch arm: "arm64", intel: "x64"

  version "1.4.3"
  sha256 arm:   "26462443e6f5154bf2cd475ee94b2974bbd79ab5d7ceda8284893b5134ef8b87",
         intel: "f93e7dd23233fb2ebb3e168d065249e98660e074671e890a8a01ad347b4907ab"

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

cask "jan" do
  arch arm: "arm64", intel: "x64"

  version "0.5.3"
  sha256 arm:   "7073e1c45824218628a85a8bc8bc3a1664e05d611e5afbd6b34878785f77fa45",
         intel: "7732f9eda2712bafcecafb44e17a91c16411b2218f472b0b1c3a973e9cf9541b"

  url "https://github.com/janhq/jan/releases/download/v#{version}/jan-mac-#{arch}-#{version}.dmg",
      verified: "github.com/janhq/jan/"
  name "Jan"
  desc "Offline AI chat tool"
  homepage "https://jan.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Jan.app"

  zap trash: [
    "~/Library/Application Support/Jan",
    "~/Library/Preferences/jan.ai.app.plist",
    "~/Library/Saved Application State/jan.ai.app.savedState",
  ]
end

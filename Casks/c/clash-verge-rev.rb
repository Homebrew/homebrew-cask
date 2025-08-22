cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "2.4.0"
  sha256 arm:   "48ecbcb5672abeb75926cd677f8de030fd8e51f0bff0fd5edf80ae350bc302c7",
         intel: "6e979429a3400ba9cca7a3afa5e9d50c9ea86ccb967d69d9056615d85e0b77a3"

  url "https://github.com/clash-verge-rev/clash-verge-rev/releases/download/v#{version}/Clash.Verge_#{version}_#{arch}.dmg",
      verified: "github.com/clash-verge-rev/clash-verge-rev/"
  name "Clash Verge Rev"
  desc "Continuation of Clash Verge - A Clash Meta GUI based on Tauri"
  homepage "https://clash-verge-rev.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Clash Verge.app"

  zap trash: [
    "~/Library/Application Support/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/Caches/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/WebKit/io.github.clash-verge-rev.clash-verge-rev",
  ]
end

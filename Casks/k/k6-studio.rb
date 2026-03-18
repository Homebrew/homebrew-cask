cask "k6-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.12.0"
  sha256 arm:   "2815c4ccd24c2d63a7ffea37c32989e67459d473a4bfbb0abe83a8aa51624590",
         intel: "625ab14232ee6bd54818489af3b6a70cb00671fb9cf4d15e1ee153e72641b9be"

  url "https://github.com/grafana/k6-studio/releases/download/v#{version}/k6.Studio-#{version}-#{arch}.dmg",
      verified: "github.com/grafana/k6-studio/"
  name "k6 Studio"
  desc "Application for generating k6 test scripts"
  homepage "https://grafana.com/docs/k6-studio"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "k6 Studio.app"

  zap trash: [
        "~/Library/Application Support/k6 Studio",
        "~/Library/Caches/com.electron.k6-studio",
        "~/Library/Caches/com.electron.k6-studio.ShipIt",
        "~/Library/HTTPStorages/com.electron.k6-studio",
        "~/Library/Logs/k6 Studio",
        "~/Library/Preferences/com.electron.k6-studio",
        "~/Library/Saved Application State/com.electron.k6-studio.savedState",
      ],
      rmdir: "~/Documents/k6-studio"
end

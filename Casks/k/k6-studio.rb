cask "k6-studio" do
  arch arm: "arm64", intel: "x64"

  version "1.7.0"
  sha256 arm:   "b82d1402ffb7900ceb22808d7f12d37456ea39e608e852b77660509605a410ff",
         intel: "65008d18adcfbade5abe8313ced921190cf0665dbc50d3f4357c07758ab719a5"

  url "https://github.com/grafana/k6-studio/releases/download/v#{version}/k6.Studio-#{version}-#{arch}.dmg",
      verified: "github.com/grafana/k6-studio/"
  name "k6 Studio"
  desc "Application for generating k6 test scripts"
  homepage "https://grafana.com/docs/k6-studio"

  auto_updates true
  depends_on macos: ">= :catalina"

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

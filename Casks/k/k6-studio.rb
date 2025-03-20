cask "k6-studio" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.2"
  sha256  arm:   "bc86a6fff6547aca5c8123eb83e830f15279dd3e0efc33610b9113d9dc4c19fd",
          intel: "86bdf7279e5c71ec78fb40bc0af9ec46a5cbf4ba8ab1c3f5685e7ddc37a3a3fd"

  url "https://github.com/grafana/k6-studio/releases/download/v#{version}/k6.Studio-#{version}-#{arch}.dmg",
      verified: "github.com/grafana/k6-studio/"
  name "k6 Studio"
  desc "Application for generating k6 test scripts"
  homepage "https://grafana.com/docs/k6-studio"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "k6 Studio.app"
  binary "#{appdir}/k6 Studio.app/Contents/Resources/#{folder}/k6"

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

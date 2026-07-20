cask "min" do
  arch arm: "arm64", intel: "x86"

  version "1.35.6"
  sha256 arm:   "7977f640ed9db68a33f3d71ae054c72520460e4831b5a8cd853d135957b547c9",
         intel: "b743f61a1b5e8b6fc2277ae2398a5205f32329ae68f7bff8c0c8ee9cce1404cb"

  url "https://github.com/minbrowser/min/releases/download/v#{version}/min-v#{version}-mac-#{arch}.zip",
      verified: "github.com/minbrowser/min/"
  name "Min"
  desc "Minimal browser that protects privacy"
  homepage "https://minbrowser.org/"

  livecheck do
    url "https://minbrowser.org/min/updates/latestVersion.json"
    strategy :json do |json|
      json["version"]
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on macos: :monterey

  app "Min.app"

  zap trash: [
    "~/Library/Application Support/Min",
    "~/Library/Caches/Min",
    "~/Library/Saved Application State/com.electron.min.savedState",
  ]
end

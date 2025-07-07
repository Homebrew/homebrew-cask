cask "min" do
  arch arm: "arm64", intel: "x86"

  version "1.35.1"
  sha256 arm:   "d64e47df59ba031b637aed273b37e4e1c9454078fa833ea9535b86705237e9cd",
         intel: "6106b822470cbb33464fd47c3396cef808f32e2e40d4dbd0dcecd2c63372a0ad"

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

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Min.app"

  zap trash: [
    "~/Library/Application Support/Min",
    "~/Library/Caches/Min",
    "~/Library/Saved Application State/com.electron.min.savedState",
  ]
end

cask "min" do
  arch arm: "arm64", intel: "x86"

  version "1.35.2"
  sha256 arm:   "431fd06587bbd3da512bfbb1721618c21d0502485c3a671eafc0fbb54d093b99",
         intel: "3f342d32935970e7afaf7c53e6dd77603514ada8c300dedd510998909240218e"

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
  depends_on macos: ">= :monterey"

  app "Min.app"

  zap trash: [
    "~/Library/Application Support/Min",
    "~/Library/Caches/Min",
    "~/Library/Saved Application State/com.electron.min.savedState",
  ]
end

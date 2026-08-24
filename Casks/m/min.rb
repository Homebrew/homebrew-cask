cask "min" do
  arch arm: "arm64", intel: "x86"

  version "1.35.7"
  sha256 arm:   "326dddb576e2e0a496d49d4396ccaca839ff3fffea75197a5f7d97f774716cb1",
         intel: "0e13a1335a251949bc99482a435d715522a7653c0df472c40e971c1aeaed721c"

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

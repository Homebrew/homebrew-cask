cask "quba" do
  version "1.4.1"
  sha256 "4a30c194d59fc850650bd007a717745d53dd060e26792642f47e5368f373f1bb"

  url "https://github.com/ZUGFeRD/quba-viewer/releases/download/v#{version}/Quba-#{version}-universal.dmg"
  name "Quba-Viewer"
  desc "Viewer for electronic invoices"
  homepage "https://quba-viewer.org/"

  livecheck do
    url "https://github.com/ZUGFeRD/quba-viewer"
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :high_sierra"

  app "Quba.app"

  zap trash: [
    "~/Library/Application Support/Quba",
    "~/Library/Preferences/org.quba-viewer.viewer.plist",
    "~/Library/Saved Application State/org.quba-viewer.viewer.savedState",
  ]
end

cask "quba" do
  version "1.4.1"
  sha256 "f16c094dbc132da7326b3982d832398454fbadc72ce96a54fb46f25a1a8f3080"

  url "https://github.com/ZUGFeRD/quba-viewer/releases/download/v#{version}/Quba-#{version}-universal.dmg",
      verified: "github.com/ZUGFeRD/quba-viewer/"
  name "Quba-Viewer"
  desc "Viewer for electronic invoices"
  homepage "https://quba-viewer.org/"

  livecheck do
    url :url
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

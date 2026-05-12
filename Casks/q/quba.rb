cask "quba" do
  version "1.5.1"
  sha256 "7558b83c03847c872a80fe658eabcde17db2e1f02eab5a79c43141508fd85ba2"

  url "https://github.com/ZUGFeRD/quba-viewer/releases/download/v#{version}/Quba-#{version}-universal.dmg",
      verified: "github.com/ZUGFeRD/quba-viewer/"
  name "Quba-Viewer"
  desc "Viewer for electronic invoices"
  homepage "https://quba-viewer.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "Quba.app"

  zap trash: [
    "~/Library/Application Support/Quba",
    "~/Library/Preferences/org.quba-viewer.viewer.plist",
    "~/Library/Saved Application State/org.quba-viewer.viewer.savedState",
  ]
end

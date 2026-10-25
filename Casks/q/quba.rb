cask "quba" do
  on_arm do
    version "2.0.0"
    sha256 "3f0ab1ad76c6ca94e686b0eb5cf0f1f9888c4756e90bb3ec5cd2f46d294c6d7e"

    url "https://github.com/ZUGFeRD/quba-viewer/releases/download/#{version}/Quba-#{version}-macos-arm64.dmg"

    livecheck do
      url :url
      strategy :github_latest
    end
  end
  on_intel do
    version "1.5.1"
    sha256 "7558b83c03847c872a80fe658eabcde17db2e1f02eab5a79c43141508fd85ba2"

    url "https://github.com/ZUGFeRD/quba-viewer/releases/download/v#{version}/Quba-#{version}-universal.dmg"

    livecheck do
      skip "Legacy version"
    end
  end

  name "Quba-Viewer"
  desc "Viewer for electronic invoices"
  homepage "https://quba-viewer.org/"

  depends_on :macos

  app "Quba.app"

  zap trash: [
    "~/Library/Application Support/Quba",
    "~/Library/Preferences/org.quba-viewer.viewer.plist",
    "~/Library/Saved Application State/org.quba-viewer.viewer.savedState",
  ]
end

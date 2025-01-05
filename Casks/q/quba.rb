cask "quba" do
  version "1.4.2"
  sha256 "abbbdad83f404f40683e17e4b9bfd1150c46c85d76b856820e9498231b25a8c7"

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
  depends_on macos: ">= :big_sur"

  app "Quba.app"

  zap trash: [
    "~/Library/Application Support/Quba",
    "~/Library/Preferences/org.quba-viewer.viewer.plist",
    "~/Library/Saved Application State/org.quba-viewer.viewer.savedState",
  ]
end

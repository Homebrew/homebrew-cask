cask "archi" do
  arch arm: "-Silicon"

  version "5.7.0"
  sha256 arm:   "dbfc38f9a29f8df4c62e38e5fe73a8b85b67bfbfe48e67dece4ae649ae1a6e57",
         intel: "c0896127a5e684be6b31be73c07258c1a982c15d773cae77c22f6e1172206b92"

  url "https://github.com/archimatetool/archi.io/releases/download/#{version.major}/Archi-Mac#{arch}-#{version}.dmg",
      verified: "github.com/archimatetool/archi.io/"
  name "Archi"
  desc "Open-source ArchiMate modelling toolkit"
  homepage "https://www.archimatetool.com/"

  # Upstream deletes any comments on their repo about downstream packaging
  # Ref: https://github.com/Homebrew/homebrew-cask/issues/236819#issuecomment-3549051960
  disable! date:    "2025-11-18",
           because: "the developer intentionally makes distribution difficult for package managers"

  depends_on macos: ">= :big_sur"

  app "Archi.app"

  zap trash: [
    "~/Library/Application Support/Archi",
    "~/Library/Logs/Archi",
    "~/Library/Preferences/com.archimatetool.editor.plist",
    "~/Library/Saved Application State/com.archimatetool.editor.savedState",
  ]
end

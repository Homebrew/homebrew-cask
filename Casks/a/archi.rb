cask "archi" do
  arch arm: "-Silicon"

  version "5.7.0"
  sha256 arm:   "dbfc38f9a29f8df4c62e38e5fe73a8b85b67bfbfe48e67dece4ae649ae1a6e57",
         intel: "c0896127a5e684be6b31be73c07258c1a982c15d773cae77c22f6e1172206b92"

  url "https://www.archimatetool.com/downloads/archi/#{version.major_minor}/Archi-Mac#{arch}-#{version}.dmg"
  name "Archi"
  desc "Open-source ArchiMate modelling toolkit"
  homepage "https://www.archimatetool.com/"

  livecheck do
    url "https://www.archimatetool.com/download/"
    regex(%r{href=.*?/Archi[._-]Mac#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match
  end

  depends_on macos: ">= :big_sur"

  app "Archi.app"

  zap trash: [
    "~/Library/Application Support/Archi",
    "~/Library/Logs/Archi",
    "~/Library/Preferences/com.archimatetool.editor.plist",
    "~/Library/Saved Application State/com.archimatetool.editor.savedState",
  ]
end

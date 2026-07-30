cask "aphera" do
  version "1.2.0"
  sha256 "941ef7ddeb733268cc88ccc8603b82f2c654730c305672476d71ce170b4cccde"

  url "https://releases.aphera.app/Aphera.#{version}.dmg",
      verified: "releases.aphera.app/"
  name "Aphera"
  desc "Raw photo editing software"
  homepage "https://aphera.co/"

  livecheck do
    url "https://releases.aphera.app/latest"
    strategy :header_match
  end

  depends_on macos: :sequoia

  app "Aphera.app"

  zap trash: [
    "~/Library/Application Scripts/co.latentco.Aphera",
    "~/Library/Application Scripts/co.latentco.Aphera.QuickLook",
    "~/Library/Application Support/Aphera",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.latentco.aphera.sfl*",
    "~/Library/Containers/co.latentco.Aphera",
    "~/Library/Containers/co.latentco.Aphera.QuickLook",
    "~/Library/Preferences/co.latentco.Aphera.plist",
  ]
end
